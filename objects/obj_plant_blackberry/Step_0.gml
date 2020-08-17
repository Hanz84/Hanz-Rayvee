/// @description Insert description here
// You can write your code in this edit


if (ready_for_harvest)
{
	if(place_meeting(x,y,obj_player && obj_input.button_a))
	{
		image_index = 0;
		
		ready_for_harvest = false;
		
	
	}
	
}
		
if (ready_for_harvest == false) 
{
	if (irandom(800000) + growthratio > 800000)
	{
		image_index +=1;
	}
	if(image_index == 3 )
	{
		ready_for_harvest = true;
		
	}
	
}
