/// @description Insert description here
// You can write your code in this editor

if (timer2<=9)
{
	if (timer2>2)
	{
		direction = facing;
		speed = 1;
		image_speed = 0.2;
	}
	
	timer2 +=1;
	
}
else
{
	instance_destroy(obj_insect_fang);
	
	
}