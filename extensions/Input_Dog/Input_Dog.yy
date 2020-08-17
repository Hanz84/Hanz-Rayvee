{
    "id": "5575aff6-fc97-4fdf-a7bf-0f337477d84c",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "Input_Dog",
    "IncludedResources": [
        "Sprites\\inputdog\\sDogBark",
        "Sprites\\inputdog\\sDogGrowl",
        "Sprites\\inputdog\\sDogIdle",
        "Sprites\\inputdog\\sFatButton",
        "Sprites\\inputdog\\sThinButton",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_get_custom_controls_file.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_get_gamepad_input_down.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_custom_controls.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_default_gamepad_mapping.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_load_default_keyboard_mapping.gml",
        "Scripts\\inputdog\\_Custom Controls\\inputdog_save_custom_controls.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_file_load.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_file_save.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_get_input_string.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_start_playing.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_start_recording.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_stop_playing.gml",
        "Scripts\\inputdog\\_Input Manager\\_Replays\\inputdog_replay_stop_recording.gml",
        "Scripts\\inputdog\\_Input Manager\\inputdog_add_input",
        "Scripts\\inputdog\\_Input Manager\\inputdog_check_gamepad_input",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_empty_gamepad_slot",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_empty_joystick_slot",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_inputmanager_child_by_player",
        "Scripts\\inputdog\\_Input Manager\\inputdog_find_inputmanager_child_by_gamepad",
        "Scripts\\inputdog\\_Input Manager\\inputdog_get_gamepad_string",
        "Scripts\\inputdog\\_Input Manager\\inputdog_get_keyboard_string",
        "Scripts\\inputdog\\_Input Manager\\inputdog_is_slot_in_use",
        "Scripts\\inputdog\\_Input Manager\\inputdog_keyboard_check_direct",
        "Scripts\\inputdog\\_Input Manager\\inputdog_search_for_gamepads",
        "Scripts\\inputdog\\_Input Manager\\inputdog_search_for_joysticks",
        "Scripts\\inputdog\\_Input Manager\\inputdog_tween",
        "Scripts\\inputdog\\inputdog_analog",
        "Scripts\\inputdog\\inputdog_direction",
        "Scripts\\inputdog\\inputdog_down",
        "Scripts\\inputdog\\inputdog_pressed",
        "Scripts\\inputdog\\inputdog_released",
        "Scripts\\inputdog\\inputdog_set_rumble",
        "Fonts\\inputdog\\fButton",
        "Objects\\inputdog\\ClickableButtons\\ButtonParent",
        "Objects\\inputdog\\ClickableButtons\\GoToExampleRoom",
        "Objects\\inputdog\\ClickableButtons\\GoToInputRemapRoom",
        "Objects\\inputdog\\ClickableButtons\\LoadDefaultInputs",
        "Objects\\inputdog\\ClickableButtons\\SaveInputMapping",
        "Objects\\inputdog\\ClickableButtons\\SetInput",
        "Objects\\inputdog\\ClickableButtons\\StartStopRecording",
        "Objects\\inputdog\\ClickableButtons\\ToggleDirectInput",
        "Objects\\inputdog\\ExampleRoom\\ExampleDog",
        "Objects\\inputdog\\InputForPlayer1",
        "Objects\\inputdog\\InputForPlayer2",
        "Objects\\inputdog\\InputForPlayer3",
        "Objects\\inputdog\\InputForPlayer4",
        "Objects\\inputdog\\InputManager",
        "Objects\\inputdog\\InputRemappingManager",
        "Rooms\\inputdog\\rInitInputManager",
        "Rooms\\inputdog\\rExampleRoom",
        "Rooms\\inputdog\\rExampleInputRemapping"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2020-10-11 11:08:19",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "1a45ae42-fb9c-4e7e-9339-e02477ada458",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "15955153-3325-4ae5-b11d-81902738b1d4",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_down",
                    "hidden": false,
                    "value": "101"
                },
                {
                    "id": "ba9e2932-04b5-4025-b888-08c93dcce420",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_left",
                    "hidden": false,
                    "value": "102"
                },
                {
                    "id": "af0913f1-dc0a-49b5-8c61-e8a384f60505",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_right",
                    "hidden": false,
                    "value": "103"
                },
                {
                    "id": "7c099609-f4dd-4dc5-b1c0-27427b0ac6e6",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_stick_up",
                    "hidden": false,
                    "value": "104"
                },
                {
                    "id": "2e6434e8-e39e-49a1-b1b9-a756d958cc55",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_left_trigger",
                    "hidden": false,
                    "value": "105"
                },
                {
                    "id": "185f9ddd-4218-4ee4-8f59-9778ea8de264",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_down",
                    "hidden": false,
                    "value": "106"
                },
                {
                    "id": "4e88a336-6cff-4f76-863e-f3d2811af08d",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_left",
                    "hidden": false,
                    "value": "107"
                },
                {
                    "id": "9edf1725-95a5-4610-8d87-bc792e7236af",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_right",
                    "hidden": false,
                    "value": "108"
                },
                {
                    "id": "28832bea-5d3e-42cd-8328-84c5d2372021",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_stick_up",
                    "hidden": false,
                    "value": "109"
                },
                {
                    "id": "30555d12-84b7-4e80-b15e-46ebdeb56ac5",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "inputdog_gp_right_trigger",
                    "hidden": false,
                    "value": "110"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "inputdog.ext",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\inputdog.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "com.messhof.inputDog",
    "productID": "1CC19BDD3FEBFF198B83FD01CF43599E",
    "sourcedir": "",
    "supportedTargets": -1,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.2.0"
}