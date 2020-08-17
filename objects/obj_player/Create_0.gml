/// @description Insert description here
// You can write your code in this editor
pad = 0;
location = 0;
vx = 0;
vy = 0;
player_speed = 2;
timer = 0;
location = 0;
spr_walk = spr_player_up;
spr_attack = spr_player_attack_down;
facing = 1; // 1 up 2 right etc..
player_hp = 40;
max_player_hp = 50;
invincibility = 0;
collision = false;
gold = 0;
state = "IDLE";
object_set_sprite(obj_player, spr_select_arrow);
currentroom = room;
oldroom = room;
menu_select = 1;
game_start = true;
playerSlot = 1;