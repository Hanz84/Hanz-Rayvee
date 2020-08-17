/// @description Insert description here
// You can write your code in this editor


currentroom = room;

if (turn_off == 0)
{
	global.selection_text = "";	
	instance_destroy(obj_selection_arrow)

	turn_off = 1;
	select_location = 0;
	
	
}

if( currentroom != Room_Inventory)
{
	select_location = 0;
	global.selection_text = "";
	global.show_text = false;
	
}

 else if(place_meeting(x,y,obj_inventory_select_square) && obj_input.button_a)
{
	global.show_text = true;
	
	
}
else if(place_meeting(x,y,obj_inventory_select_square) && obj_input.button_b)
{
	
		
	select_location = 1;
	
}


