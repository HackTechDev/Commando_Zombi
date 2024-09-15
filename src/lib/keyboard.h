#ifndef KEYBOARD_H
#define KEYBOARD_H
#include <cpctelera.h> 
#include <types.h>

cpct_keyID ReturnKeyPressed();
void Wait4Key(cpct_keyID key);

#endif // KEYBOARD_H