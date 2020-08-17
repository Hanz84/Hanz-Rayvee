/// @description Insert description here
// You can write your code in this editor
//Time increment 
 

 if (global.hours < 12)
 {
	 if (irandom(9000) == 1 && !instance_exists(obj_rain_cycle)) // Check if rain exist if not then 1 in 1600 per frame chance of rain
	 {
	 instance_create_layer(0,0,"Instances_room1",obj_rain_cycle);
	 }
	 if(instance_exists(obj_rain_cycle))
	 {
		 global.rain_timer += 1;
	 }
	seconds += time_increment;
	minutes = seconds / 60;
	 global.hours = minutes / 60;
	darkness = global.hours/18;
 }
 
 

 if (global.hours == 12)
 {
	
	 seconds += time_increment;
	 minutes = seconds / 60;
	 global.hours = minutes / 60;
	 
	 darkness = global.hours/18;
	 isday = true;
 } 
 if (isday)
 {	
	 
	
	if (irandom(30000) == 1 && !instance_exists(obj_rain_cycle))
	 {
	 instance_create_layer(0,0,"Instances_room1",obj_rain_cycle);
	 }
	 if(instance_exists(obj_rain_cycle))
	 {
		 global.rain_timer += 1;
	 }
	seconds += time_increment;
	minutes = seconds / 60;
	global.hours = minutes / 60;
	
	if (global.hours mod 1 == 0 || global.hours mod 2 == 0 ) 
	{
	
		darkness -= 0.06
		
	
	}
		
	
	
	
	
	  if (global.hours == 24)
 {
	 if (irandom(1) == 1)
	 {
	 instance_destroy(obj_rain_cycle);
	 global.rain_timer = 0;
	 darkness = 0;
	 isday = false;
	 seconds = 0;
	 day += 1;
	 global.hours = 0;
	 }
	 else
	 {
	 
	 darkness = 0;
	 isday = false;
	 seconds = 0;
	 day += 1;
	 global.hours = 0;
	 }
 }
	 
	
 }

// Hour and day increment

 
if (day > 30)

{
	day = 1;
	
}

