event_inherited();
var INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(global.editPlayerSlot);

with(INPUT_MANAGER)
    inputdog_load_custom_controls();
room_goto(rExampleRoom);

