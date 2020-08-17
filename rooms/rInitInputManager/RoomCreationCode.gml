/*
    The InputManager object is just a parent object.
    
    Create a InputForPlayer object for each player
    in your game. The controls for those players are
    set up in their respective objects
*/
instance_create(0,0,InputForPlayer1);
instance_create(0,0,InputForPlayer2);
instance_create(0,0,InputForPlayer3);
instance_create(0,0,InputForPlayer4);
room_goto_next();