/// @description update inputs
ds_map_copy(inputsDownLastFrame, inputsDown);

for(i=0; i<ds_list_size(inputs); i++)
{
    var INPUT = ds_list_find_value(inputs,i);
    
    // keyboard input
    ds_map_replace(inputsDown, INPUT, inputdog_keyboard_check_direct(ds_map_find_value(customKeys, INPUT)));
    
    // gamepad input
    if(gamepadSlot != -1)
    {   
        // i like to allow the keyboard to still work even when a gamepad is plugged in
        var MAX = max(inputdog_down(INPUT,playerSlot), inputdog_check_gamepad_input(gamepadSlot, ds_map_find_value(customGamepadInputs,INPUT),directInput));
        ds_map_replace(inputsDown, INPUT, MAX);
    }
}

///replays
switch(replayMode)
{
    case "record":
    var INPUTS_DOWN = inputdog_replay_get_input_string();
    if(INPUTS_DOWN != lastInputsDown)
    {
        ds_map_add(replayLog, replayFrame, INPUTS_DOWN);
        lastInputsDown = INPUTS_DOWN;
        show_debug_message("player "+string(playerSlot)+" saved frame "+string(replayFrame)+": "+INPUTS_DOWN);
    }
    break;
    
    case "play":
    //this is where you can allow actual inputs to interrupt the replay
    for(var i=0; i<ds_list_size(inputs); i++)
    if(replayMode == "play")
    {
        var INPUT = ds_list_find_value(inputs,i);
        if(inputdog_down(INPUT,playerSlot))
        {
            with(InputManager)
                replayMode = "idle";
            show_debug_message("player "+string(playerSlot)+" exited replay playback");
        }
    }
    
    /*
        overwrite the live inputs 
    
        (last frame inputs are written as normal
              in the inputmanager begin step event)
    */  
    
    // get the current inputs from the log
    var INPUTS_DOWN = lastInputsDown;
    var CURRENT_INPUTS = ds_map_find_value(replayLog, replayFrame);
    if(not is_undefined(CURRENT_INPUTS))
    {
        show_debug_message("player "+string(playerSlot)+" found frame "+string(replayFrame)+": "+CURRENT_INPUTS);
        INPUTS_DOWN = CURRENT_INPUTS;
        lastInputsDown = INPUTS_DOWN;
    }
    
    //explode the string
    var STR = ds_list_create();
    var START = 0;
    
    var ITER = 0;
    while(START <= string_length(INPUTS_DOWN) and ITER<ds_list_size(inputs)+2)
    {
        ITER++;
        //show_debug_message("t");
        for(var i=START; i<=string_length(INPUTS_DOWN); i++)
            if(string_char_at(INPUTS_DOWN, i) == "_")
            {
                ds_list_add(STR, string_copy(INPUTS_DOWN,START, i-START));
                START = i+1;
                break;
            }
    }
    
    // overwrite the live inputs
    for(var i=0; i<ds_list_size(STR); i++)
    {
        var INPUT = ds_list_find_value(inputs,i);
        var BOOL = real(ds_list_find_value(STR,i));
        ds_map_replace(inputsDown,INPUT, BOOL);
    }
    
    //clean up ds
    ds_list_destroy(STR);
    
    // check for the end of the data
    if(replayFrame >= lastFrameRecorded)
    {
        replayMode = "idle";
    }
    break;
}
replayFrame++;

/* */
///apply and fade rumble
if(gamepadSlot != -1)
    if(rumbleEnabled)
        gamepad_set_vibration(gamepadSlot, rumble, rumble);
    else
        gamepad_set_vibration(gamepadSlot, 0, 0);
    
var V = 0.01;
rumble = max(rumble-V,0);

/* */
/*  */
