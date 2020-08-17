image_xscale = 3;
image_yscale = 3;

var d = inputdog_direction("up","down","left","right",playerSlot);
if(d == -1)
    speed = 0;
else
{  
    var s = point_distance(0,0, -inputdog_analog("left",playerSlot)+inputdog_analog("right",playerSlot),
                                -inputdog_analog("up",playerSlot)+inputdog_analog("down",playerSlot))
    motion_set(d,3 * s);
}

if inputdog_pressed("bark",playerSlot)
{
    sprite_index = sDogBark;
    inputdog_set_rumble(0.25, playerSlot);
}

if inputdog_pressed("growl", playerSlot) 
{
    sprite_index = sDogGrowl;
    inputdog_set_rumble(0.5, playerSlot);
}

