event_inherited();
var INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(global.editPlayerSlot);

with(INPUT_MANAGER)
    if(other.gamepad)
        inputdog_load_default_gamepad_mapping();
    else
        inputdog_load_default_keyboard_mapping();

