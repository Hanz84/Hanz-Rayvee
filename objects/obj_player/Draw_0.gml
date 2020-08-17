/// @description Insert description here
// You can write your code in this editor


	
	if(global.menu_active)
	{
		
		draw_self(); // if player in menu dont draw player hp etc.
		
	}
	else 
	
	
		{
			  draw_healthbar(0, 0, 38, 3, player_hp/max_player_hp * 100, 0, 255, 128, 0, true, false);
			
			  draw_set_font(obj_gold_font);
			  draw_text(30,15, string(gold));
			   if (invincibility mod 2 == 0 && invincibility != 0)
	 {
		 
		 
		 
	 }
	 else
	 {
		 draw_self();
		 
	 }
	         
		}
		
	