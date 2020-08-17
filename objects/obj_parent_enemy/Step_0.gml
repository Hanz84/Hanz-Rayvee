/// @description Insert description here
// You can write your code in this editor
if (iframes > 0)
{
	iframes--;      // if object invicible count invincibilty down
	
}

if (hp == 0)
{
	instance_destroy();
	
}
if(place_meeting(x,y,obj_bolt_attack))
{
	
	if (iframes == 0)
{
	iframes = 30;
	hp -= other.damage;
	
	
	
	

}
	
	
}