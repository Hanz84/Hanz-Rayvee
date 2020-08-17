/*
    I'm drawing all the text to a surface while i create the
    buttons for each input. This way I don't have to remember
    where the buttons were placed to be able to draw the text
    next to them!
*/
canvas = surface_create(room_width,room_height);
surface_set_target(canvas);

var X = room_width/2 - 25;
var Y = 0;
var INPUT_MANAGER = inputdog_find_inputmanager_child_by_player(global.editPlayerSlot);

instance_create(80,200, ToggleDirectInput);

for(i=0; i<ds_list_size(INPUT_MANAGER.inputs); i++)
{
    var INPUT = ds_list_find_value(INPUT_MANAGER.inputs,i);
    
    Y = 54 + (i*(sprite_get_height(sThinButton)+3));
    
    draw_set_color( c_black );
    draw_set_halign(fa_right);
    draw_set_valign(fa_middle);
    draw_set_font(fButton);
    
    // draw the input text
    draw_text(X-64, Y, string_hash_to_newline(INPUT));
    
    // make the keyboard customize button
    with(instance_create(X,Y, SetInput))
    {
        input = INPUT;
    }
    
    // make the gamepad customize button
    with(instance_create(X+sprite_get_width(sThinButton)+64,Y, SetInput))
    {
        input = INPUT;
        gamepad = true;
    }
}
draw_set_color(c_white);
surface_reset_target();

Y+=sprite_get_height(sThinButton)+3;

// default keyboard layout button
with(instance_create(X,Y,LoadDefaultInputs))
    gamepad = false;
    
// default gamepad layout button
with(instance_create(X+sprite_get_width(sFatButton)+64,Y,LoadDefaultInputs))
    gamepad = true;

Y+=sprite_get_height(sFatButton)+3;

// save layouts button
instance_create(X+sprite_get_width(sThinButton)/2+32,Y, SaveInputMapping);

// back to menu room button
instance_create(80, 50, GoToExampleRoom);

/* */
/*  */
