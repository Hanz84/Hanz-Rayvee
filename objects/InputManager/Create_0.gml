/// @description init
inputs = ds_list_create();
defaultKeys = ds_map_create();
defaultGamepadInputs = ds_map_create();
playerSlot = instance_number(InputManager);
global.editPlayerSlot = playerSlot; //for the remapping room
show_debug_message("created InputManager for Player "+string(playerSlot));

event_user(0); //add inputs

customKeys = ds_map_create();
customGamepadInputs = ds_map_create();
inputdog_load_default_keyboard_mapping();
inputdog_load_default_gamepad_mapping();

directInput = false;

inputdog_load_custom_controls();

gamepadSlot = -1;
event_perform(ev_alarm,0); //check for gamepads

inputsDown = ds_map_create();
var i;
for(i=0; i<ds_list_size(inputs); i++)
{
    var INPUT = ds_list_find_value(inputs,i);
    ds_map_add(inputsDown,INPUT,0);
}

inputsDownLastFrame = ds_map_create();
ds_map_copy(inputsDownLastFrame,inputsDown);

rumbleEnabled = true;
rumble = 0;

analogDeadzone = 0.25; //when the analog value is big enough to be player input
analogDownDeadzone = 0.5; //when the analog val is enough to be a press

event_perform(ev_alarm,0); // find gamepads

if(object_index == InputManager)
    show_error("InputManager is a parent object that should not be instantiated. Try making InputForPlayer1 instead!",true);

///replays
replayFrame = 0;
replayFilename = "player_"+string(playerSlot)+"_replay.txt";

replayLog = ds_map_create();
lastInputsDown = "";
lastFrameRecorded = -1;

replayMode = "idle";

