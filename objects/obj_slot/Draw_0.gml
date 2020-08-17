/// @description Insert description here
// You can write your code in this editor
var iid = global.inventory[# var_slot, 0];
var amount = global.inventory[# var_slot, 1];





if (iid == 3 && global.menu_select = 0)
{
	

	if (global.show_text)
	{
		global.item_index[# iid, 0] = "Health brew";
    global.item_index[# iid, item_stat.description] ="Replenishes a modest amount of health";
		
		global.currenttext_name =  string(global.item_index[# iid, 0] )
		draw_text(x-4,y-20,global.currenttext_name); // Draw item name
		 global.currenttext_description = string(global.item_index[# iid,item_stat.description])
		draw_text(x,y+30,global.currenttext_description);
	}
	  if(select_location == 1 )
	{
		global.show_text = false;
		global.selection_text = "Use Item: \n No\n Yes"
		draw_text(x,y-50,global.selection_text)
		if(!instance_exists(obj_selection_arrow))
		instance_create_layer(x-16,y-45,"instances_Inventory",obj_selection_arrow)
		if(obj_input.down)
		{
			obj_selection_arrow.y = y-35;
			
		}
		else if(obj_selection_arrow.y == y-35 && obj_input.button_b)
	    {
			item_add_auto( iid,-1)
			with (obj_player)
			{
				player_hp += 5;
				
			}
		}
		else if (obj_selection_arrow.y == y-45 && obj_input.button_c)
		{
		
				turn_off = 0;
			
		}
			
		
		
		else if(obj_input.up)
		{
			
			obj_selection_arrow.y = y-45;
			
			
		}
		else if (obj_input.right || obj_input.left)
		{
			
			
				instance_destroy(obj_selection_arrow)
				turn_off = 0;
		
		}
		
		
	}
 
}





else if (iid == 2 && global.menu_select == 1)
{
	
	
	if (global.show_text)
	{global.item_index[# iid, 0] = "Bomb";
    global.item_index[# iid, item_stat.description] ="Here comes the boom";
		
		global.currenttext_name =  string(global.item_index[# iid, 0] )
		draw_text(x-4,y-20,global.currenttext_name); // Draw item name
		 global.currenttext_description = string(global.item_index[# iid,item_stat.description])
		draw_text(x,y+30,global.currenttext_description);
	}
     if(select_location == 1)
	{
		global.show_text = false;
		global.selection_text = "Use Item: \n No\n Yes"
		draw_text(x,y-50,global.selection_text)
		if(!instance_exists(obj_selection_arrow))
		instance_create_layer(x-16,y-45,"instances_Inventory",obj_selection_arrow)
		if(obj_input.down)
		{
			obj_selection_arrow.y = y-35;
			
		}
		else if(obj_selection_arrow.y == y-35 && obj_input.button_b)
	    {
			item_add_auto( iid,-1)
			with (obj_player)
			{
				player_hp += 5;
				
			}
		}
		else if (obj_selection_arrow.y == y-45 && obj_input.button_c)
		{
		
			
				turn_off = 0;
			
		}
			
		
		
		else if(obj_input.up)
		{
			
			obj_selection_arrow.y = y-45;
			
			
		}
		else if (obj_input.right || obj_input.left)
		{
			
			
				instance_destroy(obj_selection_arrow)
			turn_off = 0;
		
		}
		
		
	}
 
}	
		

//Draw stuff
if (iid != item.none && currentroom == Room_Inventory)
 {
 draw_sprite(spr_item, iid, x, y); //Draw item sprite
 draw_text(x+4, y+12, string(amount)); //Draw item quantity
 }
