#include "generic.h"
#include <cpctelera.h> 

// returns the absolute value of a number
i16 Abs(i16 number) __z88dk_fastcall {
  if (number < 0)
    number *= -1;
  return (number);
}

