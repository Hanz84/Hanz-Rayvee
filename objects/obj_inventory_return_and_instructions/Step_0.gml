/// @description Insert description here
// You can write your code in this edito

with(obj_player)
{
	
	image_alpha =	0;
	
}
with(obj_rain_cycle)
{
	
	image_alpha = 0;	
	
	
}

if (obj_input.start)

	
   {
		global.inventory_menu_location = "NOT_MENU";
		global.inventory_select = false;
	   with(obj_player)
	   {
			instance_destroy(obj_wall_player)
			image_alpha = 1;   
			    room_goto(currentroom); 
		   
		   
	   }
	   with(obj_rain_cycle)
{
	
	image_alpha = 1;	
	
	
}
if (obj_input.button_c)
{
	global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
	
	
}


		
		
	

	
   }