/// @description Insert description here
// You can write your code in this editor


if (currentroom != Startingroom)
{
	currentroom = room
	oldroom = currentroom
}
else
{
	currentroom = oldroom;
	
}
if(currentroom == 5 && game_start == true)
{
	
	instance_create_layer(192,108,"Instances_room1",obj_hud)
	game_start = false;
	
}

anim_speed = 1.4;
//if (place_meeting(x,y,obj_scorpionenemy || place_meeting(x,y,obj_scorpionenemy_fireball)
//{
	
	

if (global.currentroom == 0 && global.game_start)
{
	obj_player.x = obj_start.x;
	obj_player.y = obj_start.y + 10;
	
	global.menu_active = true;

	global.game_start = false;
	check_input_all();
	
	
}
 if (global.game_start == false && global.currentroom == 0)
{
	
	
	global.menu_active = true;
	global.moveinmenu = false;
	check_input_all();
}	

else
{
	
	
switch (state) 
{
	case "ATTACK_START" : 
	
	{
		sprite_index = spr_attack;
		image_speed = 0;
		vx = 0;
		vy = 0;
		timer = 15;
		state = "ATTACK_SWORD";
		break;
		
	}
	case "ATTACK_SWORD" :
		
		{	
			if (timer == 8) 
			{
				switch (facing) 
				{
					case (0):
					{
						with(instance_create_layer(x,y-12,"Instances_room1",obj_sword))
						{
							image_angle = 90;
						}
						break;
					}
					case (1):
				
					{
						with(instance_create_layer(x+12,y,"Instances_room1",obj_sword))
						{
							image_angle = 0;
							
						}
					
						break;
					}
				
					case (2):
					{
						with(instance_create_layer(x-2,y+11,"Instances_room1",obj_sword))
						{
							image_angle = 270;
							
						}
						break;
					}
			   
					case (3):
					{
						with(instance_create_layer(x-12,y+1,"Instances_room1",obj_sword))
						{
							image_angle = 180;
							
						}
						break;
					}
				}
			}	
			if (timer>0)
			
			{
				timer--;
			}
		
			else 
		
			{
		
				state = "IDLE";
			
			}
			

			break;
	}
	
	case "IDLE":
	{
		image_speed = 0;
		sprite_index = spr_walk;
			
		vx = 0;
		vy = 0;
		check_input_all();
		break;
	
	}
	case "MOVE_RIGHT":
	{	
		facing = 1
		image_speed = anim_speed;
		spr_walk = spr_player_side;
		spr_attack = spr_player_attack_side;
		sprite_index = spr_walk;
		
		vx = player_speed;
		vy = 0;
		image_xscale = 1;
		check_input_all();
		break;
	}
	case "MOVE_LEFT":
	{	
		facing = 3;
		image_speed = anim_speed;
		image_xscale = -1;
		
		spr_walk = spr_player_side;
		spr_attack = spr_player_attack_side;
		sprite_index = spr_walk;
		vx =-1 * player_speed;
		
		vy = 0;
		
		check_input_all();
		break;
	}
	case "UP" : 
	{
		facing = 0;
		image_speed = anim_speed-1;	
		spr_walk = spr_player_up;
		spr_attack = spr_player_up;
		sprite_index = spr_walk;
		vx = 0;
		vy =-1 * player_speed;
		check_input_all();
		break;
			
		
        
	}
	case "DOWN":
	{
		facing = 2;
		image_speed = anim_speed-1;
		
		spr_walk = spr_player_down;
		spr_attack = spr_player_attack_down;
		sprite_index = spr_walk;
		vx = 0;
		vy = player_speed;
		image_xscale = 1;
		check_input_all();
		break;
		
   }
	
   

	   case "LIGHTNING_ATTACK":
   {
	   vx = 0;
	   vy = 0;
	   timer3 = 45;
	   image_speed = 1;
	   sprite_index = spr_player_lightning_attack;
	   state = "CREATE_LIGHTNING_CLOUDS";
	   break;
   }
   
   case "CREATE_LIGHTNING_CLOUDS":
   
   {
	  
	   if (timer3 == 40) 
		{
		   
		    instance_create_layer(x,y+40,"Instances_room1",obj_lightning_cloud)
			instance_create_layer(x,y+64,"Instances_room1",obj_lightning_cloud)
		}
		  if (timer3 > 0) 
	      {
		      timer3--;
		   
	      }
		  else
		  {		
			   instance_destroy(obj_lightning_cloud);
			   state = "IDLE";
		    
		  } break;
   }
   
   
   case "ITEM_PICKUP":
   
   {
	   vx = 0;
	   vy = 0;
	   timer2 = 25;
	   image_speed = 1;
	   sprite_index = spr_player_item_pickup;
	
	   state = "ITEM_PICKUP_ANIMATION";
	   break;
   }
  
  case "ITEM_PICKUP_ANIMATION" :
   {
	   
	   if (timer2 > 0 )
	  {
		   
		   timer2--;
	  }   
		else 
		
			{
		
				state = "IDLE";
			
			} break;
		   
   }
 
}		


if(place_meeting(x,y, obj_insectenemy))
{
	
 
 if (collision == true)
 {
	player_hp -=0;
 }
 else 
 { 
	player_hp -=5;
	
 }
collision = true;

invincibility = 20;

  
}
	

if (invincibility > 0)
{
	invincibility--
	
}
 else
 { 
	 collision = false;
 }
 if (check_collision_all(vx,vy,obj_solid))
 {
	 smooth_move(vx,vy);
	 
 }

var inst = instance_place(x,y,obj_room_transition);
if (inst != noone)
{
	room_goto(inst.targetroom);
}

}