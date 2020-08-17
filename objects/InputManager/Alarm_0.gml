/// @description search for gamepads
if(directInput)
    inputdog_search_for_joysticks();
else
    inputdog_search_for_gamepads();
alarm[0] = 120;

