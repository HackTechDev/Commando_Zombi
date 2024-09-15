#include "generic.h"
#include <cpctelera.h> 

///////////////////////////////////////////////////////////////////////////////////
// GENERIC FUNCTIONS
///////////////////////////////////////////////////////////////////////////////////

// returns the absolute value of a number
i16 Abs(i16 number) __z88dk_fastcall {
  if (number < 0)
    number *= -1;
  return (number);
}

// get the length of a string
u8 Strlen(const unsigned char *str) __z88dk_fastcall {
  const unsigned char *s;
  for (s = str; *s; ++s);
  return (s - str);
}


// converts an integer to ASCII (Lukás Chmela / GPLv3)
char* Itoa(u16 value, char* result, int base) {
  int tmp_value;
  char* ptr = result, *ptr1 = result, tmp_char;

  if (base < 2 || base > 36) {
    *result = '\0';
    return result;
  }

  do {
    tmp_value = value;
    value /= base;
    *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
  } while (value);

  if (tmp_value < 0)
    *ptr++ = '-';
  *ptr-- = '\0';

  while(ptr1 < ptr) {
    tmp_char = *ptr;
    *ptr--= *ptr1;
    *ptr1++ = tmp_char;
  }

  return result;
}


// generates a pause
void Pause(u16 value) __z88dk_fastcall {
  u16 i;
  for(i=0; i < value; i++) {
    __asm
      halt
      __endasm;
  }
}



// every x calls, plays the music and/or FX and reads the keyboard
void Interrupt() {
  static u8 nInt;

  if (++nInt == 6) {
    cpct_scanKeyboard_if();
    nInt = 0;
  }
}
