function dabsu:select/empty
execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting_nbt",color:"gray",hover_event:{action:"show_text",value:{nbt:"nbt.obj",storage:"dabsu:run"}}}}
execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting_nbt_warn",color:"gray",hover_event:{action:"show_text",value:{nbt:"nbt.obj",storage:"dabsu:run"}}}}
function dabsu:z_private/select/nbt/start
execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting_completed",color:"green",hover_event:{action:"show_text",value:{nbt:"nbt.obj",storage:"dabsu:run"}}}}
function dabsu:z_private/mod/buffer_select/start
