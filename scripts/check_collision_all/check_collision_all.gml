var _vx,_vy,_collision;
_vx = argument[0];
_vy = argument[1];
_collision = false;

if (max(abs(_vx),abs(_vy))<0.9)
{

	repeat (1+(max(abs(_vx),abs(_vy))))

	 {
		for (var i = 2; i<argument_count; i++) 
	
		{	
			if (place_meeting(x+sign(_vx), y+sign(_vy), argument[i]))
	
			{  
				_collision = true;
				break;
			
			}
			else
				{
					x += sign(_vx);
					y += sign(_vy);
			
				}
				break;
			 }   
		}
}	

		else
		{
			 repeat (max(abs(_vx),abs(_vy)))
			 {
	
				for (var i = 2; i<argument_count; i++) 
	
				{	
				if (place_meeting(x+sign(_vx), y+sign(_vy), argument[i]))
	
			    {  
					_collision = true;
					break;
			
			    }
				 else
				 {
					x += sign(_vx);
					y += sign(_vy);
				
				 }
				 break;
		
			}


		}
}

return _collision;