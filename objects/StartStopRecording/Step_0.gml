/// @description  check for player stopping playback
if(text == "stop playback")
    with(InputManager)
        if(replayMode != "play")
            other.text = "record";

