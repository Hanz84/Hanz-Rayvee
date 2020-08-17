/// @description Insert description here
// You can write your code in this editor
scale = 7;
anal = 0;
instance_create_layer(x,y,"Instances_room1",InputForPlayer1);
//resolution_scaling();
global.hours = 0;
global.rain = false;
global.rain_timer = 0;
global.menu_active = false;
global.currentroom = room;
global.game_start = true;
global.moveinmenu = false;
global.begin_intro = false;
global.intro_text = "";
global.currenttext_name = "";
global.currenttext_description= "";
global.show_text = false;
global.menu_select = 0;
global.selection_text = "";
global.player_learned_lightning = true;
global.inventory_menu_location = "NOT_MENU";
global.pad_number = 0;
global.change_buttonlayout = false;
//instance_create_layer("Instances_menu",obj_intro_picture)
//instance_create_depth(window_get_width(),window_get_height(),+1,obj_intro_picture)
var menu_items = 0;
 
 while(menu_items < 4)
 {
		 if(menu_items == 0) 
		 {
			 instance_create_layer(x+20,y+40 * menu_items,"Instances_menu", obj_start );
			 menu_items++;
		 }
		 if(menu_items == 1)
		 {
			
			instance_create_layer(x+20,y+40 * menu_items,"Instances_menu", obj_options );
			menu_items++;
			
		 }
		 if(menu_items == 2)
		 {
			 
		 instance_create_layer(x+20,y+40 * menu_items,"Instances_menu", obj_exit );
		 menu_items++;
		 
		 }	
		 menu_items++;
 }
//instance_create_layer(obj_start.x,obj_start.y+10,"Instances_room1", obj_intro);
instance_create_layer(obj_start.x,obj_start.y+10,"Instances_room1", obj_player);
instance_create_depth(obj_start.x,obj_start.y+10,-1,obj_player);
instance_create_layer(x,y,"Instances_room1",obj_input);
instance_create_layer(x,y,"Instances_room1",obj_input_menu);
	




instance_create_layer(x,y,"Instances_room1", obj_inventory_items);
instance_create_layer(x,y,"Instances_room1", obj_room_persistent);
instance_create_layer(x,y,"Instances_room1", obj_day_night_cycle);
 //instance_create_layer(x,y,"Instances_room1", obj_item_create);



//instance_create_layer(140,120,"Instances_room1", obj_plant_blackberry);





//instance_create_layer(x,y,"Instances_room1",obj_inventory_current);

var slot = 0;
global.attack_items_inventory = ds_grid_create(8,2);
global.inventory = ds_grid_create(10, 2);
global.mouse_slot = ds_grid_create(1, 2);
ds_grid_clear(global.inventory, 0);
while (slot < ds_grid_width(global.inventory)) // Create inventory items and sets x and y coordinates for them
 {
 var inst = instance_create_layer(x-120+(24*slot), y+8, "Instances_inventory", obj_slot);
 inst.var_slot = slot;
 slot ++;
 }
 item_add_auto(item.health_drink,2);
instance_create_layer(obj_slot.x,obj_slot.y,"Instances_Inventory",obj_inventory_select_square)
//global.item_index[1,item_stat.description] = "A serviceable sword made from crude iron";
//global.item_index[1,item_stat.name] =  "Shortsword";                                         
//global.item_index[2,item_stat.name] =  "Bomb!";
//global.item_index[2,item_stat.description]= "A regular bomb that can clear a path and hurt enemies";

//global.item_index[3,item_stat.description] =   "Replenishes a modest amount of health";
 init_game(); // initilize facing degree enumn
 attack_menu_sprites(); // initilize attack sprites enum for menu







