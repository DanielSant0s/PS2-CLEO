int (*sceSifLoadModule)(char*, int, int) __attribute__((section(".data"))) = (int (*)(char*, int, int))0x005449A0;
void (*loadIOPModules2)(void) __attribute__((section(".data"))) = (void (*)())0x00245D60;
int (*printf)(const char *, ...) __attribute__((section(".data")))  = (int (*)(const char *, ...))0x0054F7D0;

int load_USBModules(){
    loadIOPModules2();

    while ( sceSifLoadModule("cdrom0:\\SYSTEM\\USBD.IRX", 0, 0) < 0 )
        printf("Can't Load USB Base Module\n");

    while ( sceSifLoadModule("cdrom0:\\SYSTEM\\USBHDFSD.IRX", 0, 0) < 0 )
        printf("Can't Load USB Mass Module\n");

    return 0;
}

