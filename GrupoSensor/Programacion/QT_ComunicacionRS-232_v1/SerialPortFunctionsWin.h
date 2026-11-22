#ifndef SERIALPORTFUNCTIONSWIN_H
#define SERIALPORTFUNCTIONSWIN_H

#ifdef __WIN32__
// Include y define especificos para manejo de puerto serie en Windows
#include <windows.h>
#include <fcntl.h>
typedef HANDLE DeviceHandle;
#define DEEVICE_HANDLE_IS_INVALID INVALID_HANDLE_VALUE
DeviceHandle InitSerialPortWin(const char* commPort,int baud_rate);
int SendSerialPortWin(DeviceHandle h,const void* ptr,int snd_bytes);
int RecvSerialPortWin(DeviceHandle h,void* ptr,int rcv_bytes);
void CloseSerialPortWin(DeviceHandle h);
#endif // __WIN32__

#endif // SERIALPORTFUNCTIONSWIN_H
