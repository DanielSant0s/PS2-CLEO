
void __attribute__((section(".memset"))) *memset(void *str, int c, size_t n) { return nullptr; }
char __attribute__((section(".strncpy"))) *strncpy(char *dest, const char *src, size_t n) { return nullptr; }
char __attribute__((section(".strcpy"))) *strcpy (char *dest, const char * src) { return nullptr; }
int __attribute__((section(".sprintf"))) sprintf(char *str, const char *format, ...) { return 0; }
char __attribute__((section(".itoa"))) *itoa(int value, char * str, int base) { return nullptr; }