#include "keyboard.h"
#include <cpctelera.h> 

///////////////////////////////////////////////////////////////////////////////////
// KEYBOARD FUNCTIONS
///////////////////////////////////////////////////////////////////////////////////

// returns the key pressed
cpct_keyID ReturnKeyPressed() {
  u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
  u16 keypressed;
  // We wait until a key is pressed
  do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
  // We detect which key has been pressed
  do {
    keypressed = *keys ^ 0xFF;
    if (keypressed)
      return (keypressed << 8) + (i - 1);
    keys--;
  } while(--i);
  return 0;
}


// wait for the full press of a key
// useful to empty the keyboard buffer
void Wait4Key(cpct_keyID key) {
  do cpct_scanKeyboard_f();
  while(!cpct_isKeyPressed(key));
  do cpct_scanKeyboard_f();
  while(cpct_isKeyPressed(key));
}
