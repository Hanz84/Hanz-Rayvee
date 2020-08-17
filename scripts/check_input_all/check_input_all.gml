

	 if(global.menu_active)
	{
		
		
		if (location == -2)
			
		{
			if (obj_input_menu.up)
			{
				obj_player.x = obj_options.x;
				obj_player.y = obj_options.y+10;
				location = -1;
			}
			if (obj_input_menu.down)
			{
					
					
			}
		}
		
		else if (location == 0)
		{
			    
			
			if (obj_input_menu.button_a && global.begin_intro == false)
			{
				global.begin_intro = true;
				room_goto_next(); // start the game and goto intro
				
				obj_player.x = 0;
				obj_player.y = 0;
				location = 1;
			}	
			if (obj_input_menu.up)
			{
				obj_player.x = obj_exit.x;
			    obj_player.y = obj_exit.y + 10;
				location = -2;
			}
			if(obj_input_menu.down) 
			{
			
			 obj_player.x = obj_options.x;
			 obj_player.y = obj_options.y + 10;
			 location = -1;
			}
				
		}
		else if (location == -1)
		{
			
			if (obj_input_menu.up)
			{
				
				obj_player.x = obj_start.x;
			    obj_player.y = obj_start.y + 10;
				location = 0;
			}
			if(obj_input_menu.down)
			{
				
				obj_player.x = obj_exit.x;
			    obj_player.y = obj_exit.y + 10;
				location = -2;
			 }
		}
		else if (location == 1)
		{
		
		}
		
	}	
	if(global.inventory_select && global.inventory_menu_location != 1)
	{
		
		if(obj_inventory_select_square.x >100)
		{
			if(obj_input_menu.right)
			{
				instance_destroy(obj_selection_arrow)
				global.show_text = false;
				global.currenttext_name = ""
				global.currenttext_description = ""
			}
			else if (obj_input_menu.left)
			{
				global.show_text = false;
				obj_inventory_select_square.x -= 24
				obj_inventory_select_square.y = 104
				global.currenttext_name = ""
				global.currenttext_description = ""
				global.menu_select -=1;
			instance_destroy(obj_selection_arrow)
			}
			else if (obj_input.button_c)
			{
				obj_inventory_select_square.x = 300
				obj_inventory_select_square.y = 10
				global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
				
				
			}
		}
		else if (obj_inventory_select_square.x <= 45)
		{
			startinglocation_menu = true;
			if(obj_input_menu.right)
			{instance_destroy(obj_selection_arrow)
				startinglocation_menu = false;
			    global.currenttext_name = ""
				global.currenttext_description = ""
			obj_inventory_select_square.x += 24
			obj_inventory_select_square.y = 104
			global.menu_select += 1;
			global.show_text = false;
			}
			 else if(obj_input_menu.left)
			{
				global.currenttext_name = ""
				global.currenttext_description = ""
				global.show_text = false;
				instance_destroy(obj_selection_arrow)
				
			}	
			else if (obj_input.button_c)
			{
				obj_inventory_select_square.x = 270
				obj_inventory_select_square.y = 30
				global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
				
				
			}
		}
		else if (startinglocation_menu == false)
		{
			
			if(obj_input_menu.right)
			{
				obj_inventory_select_square.x += 24;
			    obj_inventory_select_square.y = 104;
				global.currenttext_name = ""
				global.currenttext_description = ""
				global.show_text = false;
				global.menu_select += 1;
				instance_destroy(obj_selection_arrow)
			}
			 else if (obj_input_menu.left)
			{
				obj_inventory_select_square.x -= 24;
				obj_inventory_select_square.y = 104;
				global.currenttext_name = ""
				global.currenttext_description = ""
				global.show_text = false;
				global.menu_select -=1;
				instance_destroy(obj_selection_arrow)
			}
			else if (obj_input.button_c)
			{
				obj_inventory_select_square.x = 300
				obj_inventory_select_square.y = 10
				global.inventory_menu_location = "MAGIC_BUTTON_MAPPING";
				
				
			}
		} 
	}
switch (global.inventory_menu_location)
	 
 { 
		 
	 case "MAGIC_BUTTON_MAPPING":
	 {
		if(obj_input.left)	 
	    {
			obj_inventory_select_square.x = 304
			obj_inventory_select_square.y = 157

			 
			 
	    }
		 else if(obj_input.right)
		 {
			 obj_inventory_select_square.x = 334
			 obj_inventory_select_square.y = 157
			 
		 }
		 else if (obj_input_menu.button_b)
		 {
			 global.inventory_menu_location = 0;
			 obj_inventory_select_square.x = obj_slot.x;
			 obj_inventory_select_square.y = obj_slot.y;
			 global.menu_select = 0;

		 }
		 else
		 {
			  obj_inventory_select_square.x = 319
			 obj_inventory_select_square.y = 157
			 
		 }
		 
		}
		case "NOT_MENU":
		{
		
		if(obj_input.down){state = "DOWN";  show_debug_message("anal")}
		if (obj_input.right) state = "MOVE_RIGHT";
		if(obj_input.left) state = "MOVE_LEFT";
		if(obj_input.up) state = "UP";
		//if(obj_input.button_b) state = "LIGHTNING_ATTACK";
		if(obj_input.button_a) state = "ATTACK_START";
		
		if(!obj_input.right && !obj_input.left&&! obj_input.up&& !obj_input.down&& !obj_input.button_a &&!obj_input.button_b&&!obj_input.button_c&&!obj_input.select) state = "IDLE";
	    }
		 
	 }
		
	 		
		
	
	