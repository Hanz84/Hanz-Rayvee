/// @description Insert description here
// You can write your code in this editor

event_inherited();
	if (room == Room_Main_Menu)
	{
		object_set_visible(obj_player,false);
		
	}
	if(distance_to_object (obj_player) < 70 && sign(obj_player.y - y) == -1 ) // If enemy is beneath player and less than 70 pixels away
			
			
			
			{
				sprite_index = spr_blob_up
				move_towards_point(obj_player.x,obj_player.y,0.5); // Move towards player
				
				
			}
				else
			{
				speed = 0;
				//state = "MOVING";
				
			}
				
		
		
			if (distance_to_object(obj_player) >= 80 ){state = "MOVING";
			}
switch (state) 

{	
	case "HOMINGUP" :
		{
			
			sprite_index = spr_blob_up;
			if(check_collision_all(cx,cy,obj_solid))
				{
					facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
					
				}
				
			
			break;
			
		}
		case "HOMING" :
		{	sprite_index = spr_blob_side;
			move_towards_point(obj_player.x,obj_player.y,1);
			
			break;
		}
	case "MOVING":
	
		{
			switch (facing)
		
			{
				case enum_facing.up:
			
				{
					vx = 0;
					vy = - enemy_speed;
					image_speed = anim_speed;
					 sprite_index = spr_blob_up
					break;
				}
				case enum_facing.left:
			
				{
					vx = -enemy_speed;
					vy = 0;
					image_speed = anim_speed;
					sprite_index = spr_blob_side
					break;
				}
				case enum_facing.right:
			
					{
						vx = enemy_speed;
						vy = 0;
						sprite_index = spr_blob_side
						image_speed = anim_speed;
						break;
					}
					case enum_facing.down:
			
					{
						vx = 0;
						vy = enemy_speed;
						image_speed = anim_speed;
						sprite_index = spr_blob_side
						break;
					}
			
		}
	}


		
		
			
		
			 //if (distance_to_object (obj_player) < 20)
		
				//{
				//	state = "HOMING";
					//speed = 0;
			
			//	}	
			
		
		
		if (irandom(100)<1)  {facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
		}
		
				
					
	
	
	
	}				
				
				
			    cx = vx;
				cy = vy;
				newvx = round(cx);
				newvy = round(cy);
				cx = vx - newvx;
				cy = vy - newvy;
				if(check_collision_all(cx,cy,obj_solid))
				{
					facing = choose(enum_facing.up, enum_facing.down, enum_facing.left, enum_facing.right);
					
				}
			