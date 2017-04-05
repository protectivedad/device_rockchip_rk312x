#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"


int device_toggle_display(volatile char* key_pressed, int key_code) {
    return 0;
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
        switch (key_code) {
            case 114:
            case KEY_ENTER:
            case KEY_DOWN:
            case KEY_VOLUMEDOWN:
            case KEY_SEARCH:
                return HIGHLIGHT_DOWN;

            case 115:
            case KEY_HOME:
            case KEY_UP:
            case KEY_VOLUMEUP:
            case KEY_MENU:
                return HIGHLIGHT_UP;

            case 116:
            case KEY_LEFT:
            case KEY_POWER:
                return SELECT_ITEM;
            
            case 158:
            case KEY_ESC:
            case KEY_RIGHT:
                if (!ui_root_menu) {
                    return GO_BACK;
                }
        }
    }

    return NO_ACTION;
}
