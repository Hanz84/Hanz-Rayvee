/// @description Insert description here
// You can write your code in this editor

enum item 
{
	
	none,sword,bomb,health_drink,apple,magic_drink,blackberry,redberry,total
}

enum item_stat 
{
	name,health_gain,type,damage,description,total
}

enum item_type 

{
	none,weapon,food,total
	
}

global.item_index = ds_grid_create(11,7);
ds_grid_clear(global.item_index, "banana");



