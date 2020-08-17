/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(darkness);
draw_rectangle_colour(0,0,display_get_width(),display_get_height(),light_colour,light_colour,light_colour,light_colour,false);
draw_set_alpha(1);
//draw_text(30,70,string(day));

	draw_text(30,90,string(global.hours));
		 draw_text(30,110,string(seconds));
		 draw_text(30,130,string(global.rain_timer));
