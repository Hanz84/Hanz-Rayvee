/// @description Insert description here
// You can write your code in this editor
             
			 
	switch(state)
	{
		case "MOVING" :
		{
			switch(facing)
			{
				case enum_facing.down:
				{
					sprite_index = spr_scorpionenemy_side
					image_speed = 0.6;
					vy = enemy_speed;
					vx = 0;
				if(irandom(1000)<2)
			{
				timer = 0;
				state = "ATTACKING"
						
			}
					
				
						break;
					
				}
				case enum_facing.up:
				{
					sprite_index = spr_scorpionenemy_side
					image_speed = 0.6;
					vy = -1 * enemy_speed;
					vx = 0;
					if(irandom(1000)<2)
					{
						timer = 0;
						state = "ATTACKING"
						
					}
					
					
				
					break;
				} 
			
			
			
			}	
			break
			
		}
			
			
					
		case "ATTACKING" :
		{
			vy = 0;
			sprite_index = spr_scorpionenemy_attack_side;
			image_speed = 0.1;
			if(image_index > 3)
			{
				
				
				
				instance_create_layer(x,y-4,"Instances_room1",obj_scorpionenemy_fireball)
				state = "ATTACK_END"
				
					
			}
			break;
			
			
			
		}
			 
			
			
		case "ATTACK_END":
		{	
			image_index = 0;
			image_speed = 0;
			state = "MOVING";
			break;
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
					facing = choose(enum_facing.up, enum_facing.down)
					
				}
				
				