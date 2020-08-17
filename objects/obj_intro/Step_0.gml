/// @description Insert description here
// You can write your code in this editor
	if (global.begin_intro && intro_begun) 
{
global.intro_text = "40 years ago people in power found two \n old constructions buried beneath the sand \n ,nobody knew what they were \n but they could harness enormous amounts of power from them";
intro_sequence = 1;
intro_begun = false;
}
  if (obj_input.button_a && intro_sequence == 1)
{
	
	
	global.intro_text =  "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa";
	intro_sequence = 2;
	
	
	
}

 else if(obj_input.button_a && intro_sequence == 2)
{
	global.intro_text =  "varan";
	intro_sequence = 3;
}

else if(obj_input.button_a && intro_sequence == 3)
{
	
	with(obj_player)
	{	
		obj_player.x = 50 	obj_player.y = 120 //sets player starting position after intro
		sprite_index = spr_player_side 
		location = 32; // breaks the intro select loop
		depth = -100; // sets depth higher than background
		
		
	}
	global.menu_active = false; 
	global.currentroom = 5;
room_goto(5);
}



			
			