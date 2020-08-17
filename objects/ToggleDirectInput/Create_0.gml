event_inherited();

var INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(global.editPlayerSlot);
if(INPUT_MANAGER.directInput)
     text = "USING DIRECT_INPUT";
else
    text = "USING X_INPUT";

