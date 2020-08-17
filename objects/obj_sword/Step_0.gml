/// @description Insert description here
// You can write your code in this editor
if (timer<=9)
{
	if (timer>7)
	{
		direction = (image_angle + 180) mod 360;
		speed = 4;
	}
	
	timer +=1;
	
}
else
{
	instance_destroy(obj_sword);
	
	
}
