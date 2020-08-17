draw_self();
draw_set_colour(c_black);
var r = 16;
draw_circle(x-48,y+48,r,1);

var INPUT_MANAGER = InputManager;
INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(playerSlot);

draw_circle(x-48,y+48,r*INPUT_MANAGER.analogDeadzone,1);

draw_circle(x-48,y+48,r*INPUT_MANAGER.analogDownDeadzone,1);

draw_circle(x - 48 - inputdog_analog("left", playerSlot) * r 
             + inputdog_analog("right",playerSlot) * r,
           y+48 - inputdog_analog("up", playerSlot) * r 
             + inputdog_analog("down",playerSlot) * r,3,0);
draw_set_colour(c_white);

