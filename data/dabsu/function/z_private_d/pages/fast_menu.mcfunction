dialog show @s {\
    "type": "multi_action",\
    "title": ["",{"text": "DaBsu","color": "green"}," - Batch Spawner Utilities"],\
    "external_title": {"text": "DaBsu","color": "green"},\
    "can_close_with_escape": true,\
    "pause": false,\
    "after_action": "none",\
    "columns": 1,\
    "actions": [\
        {\
            "label": [{"text": "DaBsu ","color": "#edffc3"},{"translate": "item.minecraft.debug_stick"},"..."],\
            "action": {\
                "type": "run_command",\
                "command": "/trigger trigger.dabsu set 2"\
            },\
            "width": 220\
        },\
        {\
            "label": {"translate": "options.language"},\
            "action": {\
                "type": "run_command",\
                "command": "/trigger trigger.dabsu set 1320"\
            },\
            "width": 220\
        },\
        {\
            "label": [{"translate": "key.keyboard.menu"},"..."],\
            "action": {\
                "type": "run_command",\
                "command": "/trigger trigger.dabsu set 1000"\
            },\
            "width": 220\
        }\
    ]\
}