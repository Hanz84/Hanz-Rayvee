/// @description if selected, listen for input
event_inherited();

var INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(global.editPlayerSlot);

if(not gamepad)
{
    text = inputdog_get_keyboard_string(ds_map_find_value(INPUT_MANAGER.customKeys,input));
}
else
{
    text = inputdog_get_gamepad_string( ds_map_find_value(INPUT_MANAGER.customGamepadInputs,input));
}

if(selected)
{
    var DONE = false;
    if(gamepad)
    {
            var GAMEPAD_DOWN = inputdog_get_gamepad_input_down(INPUT_MANAGER.gamepadSlot, INPUT_MANAGER.directInput);
            if(GAMEPAD_DOWN != -1)
            {
                ds_map_replace(INPUT_MANAGER.customGamepadInputs,input,
                    GAMEPAD_DOWN);
                    DONE = true;
            }
    }
    else
    {
        if(keyboard_check_pressed(vk_anykey))
        {
            ds_map_replace(INPUT_MANAGER.customKeys,input,keyboard_lastkey);
            DONE = true;
        }
    }
    
    if(DONE)
    {
        selected = false;
    }   
}

