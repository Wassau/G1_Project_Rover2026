#include "SerialPortFunctionsWin.h"
//Crear el monitor serial en el ordenador, para pruebas rápidas se puede usar el programa Arduino IDE//

#include <stdio.h>

DeviceHandle InitSerialPortWin(const char *commPort,int baud_rate)  //Configuracion del protocolo
{
    DeviceHandle winHandle; // Identificador de dispositivo Windows
    DCB dcb; // Estructura para configuracion de puerto serie
    int ok;
    // Crear conexion con el dispositivo (puerto serie)
    winHandle=CreateFileA(commPort,GENERIC_READ | GENERIC_WRITE, 0, NULL,
                            OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
    if (winHandle == INVALID_HANDLE_VALUE)
    {
        printf ("CreateFile failed with error %d.\n", (int) GetLastError());
        return INVALID_HANDLE_VALUE;
    }

    // Poner parametros de comunicacion serie: 115200,8,n,1
    memset(&dcb,0,sizeof(DCB)); // Todos los valores a 0
    ok = GetCommState(winHandle, &dcb); // Obtener parametros actuales
    if (!ok)
    {
        printf ("GetCommState failed with error %d.\n", (int) GetLastError());
        return INVALID_HANDLE_VALUE;
    }
    dcb.DCBlength = sizeof(DCB);
    dcb.BaudRate = baud_rate;
    dcb.ByteSize = 8;
    dcb.Parity = NOPARITY;
    dcb.StopBits = ONESTOPBIT;
    ok = SetCommState(winHandle, &dcb); // Establecer nuevos parámetros comu
    if (!ok)
    {
        printf ("SetCommState failed with error %d.\n", (int) GetLastError());
        return INVALID_HANDLE_VALUE;
    }
    return winHandle;
}
int SendSerialPortWin(DeviceHandle h,const void *ptr, int snd_bytes)
{
    int ok,n_bytes;
    ok=WriteFile(h,ptr,snd_bytes,(DWORD*) &n_bytes,NULL);
    if (ok)
        return n_bytes;
    return -1;
}
int RecvSerialPortWin(DeviceHandle h, void *ptr, int rcv_bytes)
{
    int ok,n_bytes;
    ok=ReadFile(h,ptr,rcv_bytes,(DWORD*) &n_bytes,NULL);
    if (ok)
        return n_bytes;
    return -1;
}
void CloseSerialPortWin(DeviceHandle h)
{
    CloseHandle(h);
}
