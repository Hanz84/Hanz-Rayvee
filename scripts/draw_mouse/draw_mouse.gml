var iid = global.mouse_slot[# 0, 0];
var amount = global.mouse_slot[# 0, 1];

//Draw stuff
if (iid != item.none)
 {
 draw_sprite(spr_item, iid, mouse_x-32, mouse_y-32); //Draw item sprite
 draw_text(mouse_x+4-32, mouse_y+4-32, string(amount)); //Draw item quantity
 }