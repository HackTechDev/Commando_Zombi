#ifndef GENERIC_H
#define GENERIC_H

#include <types.h>

// Déclarez la fonction pour qu'elle soit accessible depuis d'autres fichiers
i16 Abs(i16 number) __z88dk_fastcall;
u8 Strlen(const unsigned char *str) __z88dk_fastcall;
char* Itoa(u16 value, char* result, int base);
void Pause(u16 value) __z88dk_fastcall;
void Interrupt();

#endif // GENERIC_H