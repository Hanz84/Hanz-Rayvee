/// @description Insert description here
// You can write your code in this editor
show_debug_message("Event = " + async_load[? "event_type"]);        // Debug code so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":  

// A game pad has been discovered
{
    global.pad_number = async_load[? "pad_index"];       // Get the pad index value from the async_load map
    gamepad_set_axis_deadzone(global.pad_number, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(global.pad_number, 0.1);    // Set the "threshold" for the triggers
	anal = 1;
}
case "gamepad lost":
{
	global.pad_number = async_load[? "pad_index"]; 
	show_debug_message("pad unplugged")
	
	
}

}