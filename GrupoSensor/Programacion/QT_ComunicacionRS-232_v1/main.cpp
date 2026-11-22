#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#include <string>

#define BAUD_RATE 115200 // Velocidad de comunicacion (la misma que el Rx de la FPGA)
#include "SerialPortFunctionsWin.h"
//#define COMM_PORT "\\\\.\\COM11" // SI ES MENOR  a 10 se puede poner COMX si no , hay que hacerlo como esta
#define COMM_PORT "COM7"

// Formato de envio de los grados:
//   1 = TEXTO: se envia "90" + fin de linea. En la FPGA: Rx_RS232_v2 -> Texto_a_Numero -> Grados_a_duty
//   0 = BYTE : se envia un solo byte con el valor 90. En la FPGA: caracter_o del Rx -> Grados_a_duty
#define ENVIAR_COMO_TEXTO 1

/*Caracteristicas del protocolo de comunicacion
    Numero de data bits = 8
    Numero de Stop bits = 1
    Numero de Start bits= 1
    Bit de paridad      = Sin paridad
 Para cambiar estos valores se debe modificar la funcion "InitSerialPortWin"
*/

/*
 Envia a la FPGA el angulo del servo (comunicacion unidireccional PC -> FPGA).
 - Se escriben los grados (0 a 180) y se pulsa Enter.
 - Si lo escrito no es un numero de 0 a 180, no se envia nada.
 - Escribir "salir" para terminar.
*/

// Muestra un byte en binario (bit 7 ... bit 0), igual que se veria en los LEDs
void imprimirBinario(unsigned char c)
{
    for (int i = 7; i >= 0; i--)
        printf("%d", (c >> i) & 1);
}

// Convierte la linea escrita en un numero de 0 a 180. Devuelve -1 si no es valida.
int leerGrados(const std::string& linea)
{
    const char* inicio = linea.c_str();
    char* fin;
    long valor = strtol(inicio, &fin, 10);    // texto -> numero
    if (fin == inicio)
        return -1;                             // no hay ningun numero
    while (*fin == ' ' || *fin == '\t')        // se permiten espacios al final
        fin++;
    if (*fin != '\0')
        return -1;                             // hay letras u otros caracteres
    if (valor < 0 || valor > 180)
        return -1;                             // fuera de rango
    return (int)valor;
}

int main()
{
    DeviceHandle handle; // Identificador de dispositivo
    int n_bytes;         // Num bytes enviados
    std::string linea;   // Texto escrito por el usuario

    // Inicializa dispositivo
    handle = InitSerialPortWin(COMM_PORT, BAUD_RATE);
    if (handle == INVALID_HANDLE_VALUE)
    {
        printf("No se puede abrir %s.\n", COMM_PORT);
        printf("Comprueba el numero de puerto \n");
        return 1;
    }

    printf("Puerto %s abierto a %d baudios (8N1)\n", COMM_PORT, BAUD_RATE);
    printf("Escribe los grados (0 a 180) y pulsa Enter. Escribe 'salir' para terminar.\n\n");

    while (true)
    {
        printf("Grados> ");
        if (!std::getline(std::cin, linea)) // Ctrl+Z o fin de entrada
            break;
        if (linea == "salir")
            break;

        int grados = leerGrados(linea);
        if (grados < 0)
        {
            printf("  Valor no valido: escribe un numero entero de 0 a 180\n");
            continue;
        }

#if ENVIAR_COMO_TEXTO
        // Enviar como texto: por ejemplo "90\n" (3 bytes: '9', '0' y fin de linea)
        char texto[8];
        int n = snprintf(texto, sizeof(texto), "%d\n", grados);
        n_bytes = SendSerialPortWin(handle, texto, n);
        if (n_bytes != n)
        {
            printf("Error en envio\n");
            CloseSerialPortWin(handle);
            return 1;
        }
        printf("  Enviado como texto: \"%d\" + fin de linea (%d bytes)\n", grados, n);
#else
        // Enviar como un solo byte con el valor de los grados
        unsigned char byte = (unsigned char)grados;
        n_bytes = SendSerialPortWin(handle, &byte, 1);
        if (n_bytes != 1)
        {
            printf("Error en envio\n");
            CloseSerialPortWin(handle);
            return 1;
        }
        printf("  Enviado como byte: %3d = ", grados);
        imprimirBinario(byte);
        printf("\n");
#endif

        // Lo mismo que calcula Grados_a_duty en la FPGA, para comprobar
        int duty = (grados * 255 + 90) / 180;
        printf("  Duty que debe salir de la FPGA: %3d = ", duty);
        imprimirBinario((unsigned char)duty);
        printf("\n");

    }

    // Finalizar conexion con el dispositivo (puerto serie)
    CloseSerialPortWin(handle);
    printf("Puerto cerrado\n");
    return 0;
}