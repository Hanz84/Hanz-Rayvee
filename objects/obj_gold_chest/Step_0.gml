
if (place_meeting(x,y,obj_player) && obj_input.button_c && used == false) // if player touches chest and press enter


{
with(obj_player) 
	
	{
		
		
			
		
		state = "ITEM_PICKUP";
		gold += 20
	
	}
	used = true;
	image_speed = 3;
}
