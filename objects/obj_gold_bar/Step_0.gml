/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x,y,obj_player))

{
	with(obj_player) 
	
	{
		gold += 1;
		
	}
	instance_destroy();
}