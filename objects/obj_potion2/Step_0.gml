/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player) &&  obj_input.button_c)

{
	
	with(obj_player) 
	
	 
	{
		
	timer2 = 20;
	
	if (timer2 == 8)
	{
		sprite_index = spr_player_item_pickup;
		
	}
	 if (timer2 >0)
	{
		timer2--
	}
	
	

	
	}
	item_add_auto(item.health_drink,1);
	item_add_auto(item.bomb,5)
		with (obj_potion2)
	{	
		
		instance_destroy();
	
		
	}
}