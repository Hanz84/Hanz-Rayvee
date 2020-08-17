//reset dogs
with(ExampleDog)
{
    x = xstart;
    y = ystart;
    speed = 0;
    sprite_index = sDogIdle;
    image_index = 0;
}

switch(text)
{
    case "record":
    with(InputManager)
        inputdog_replay_start_recording();
    text = "stop recording";
    break;
    
    case "stop recording":
    with(InputManager)
        inputdog_replay_stop_recording();
    text = "replay";
    break;
    
    case "replay":
    with(InputManager)
        inputdog_replay_start_playing();
    text = "stop playback";
    break;
    
    case "stop playback":
    with(InputManager)
        inputdog_replay_stop_playing();
    text = "record";
    break;
}

