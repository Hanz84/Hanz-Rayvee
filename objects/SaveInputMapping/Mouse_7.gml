/// @description save mapping to file
var INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(global.editPlayerSlot);

with(INPUT_MANAGER)
    inputdog_save_custom_controls();
    
text = "saved!";
alarm[0] = 30;

