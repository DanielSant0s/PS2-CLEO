
void __attribute__((section(".memset"))) *memset(void *str, int c, size_t n) { return nullptr; }
char __attribute__((section(".strncpy"))) *strncpy(char *dest, const char *src, size_t n) { return nullptr; }
char __attribute__((section(".strcpy"))) *strcpy (char *dest, const char * src) { return nullptr; }
int __attribute__((section(".sprintf"))) sprintf(char *str, const char *format, ...) { return 0; }
float  __attribute__((section(".floor"))) floor(float arg){ return 1.0; }
float   __attribute__((section(".pow"))) pow(float x, float y){ return 1.0; }

int64_t __attribute__((section(".__extendsfdf2"))) __extendsfdf2(float a){ return 0; }