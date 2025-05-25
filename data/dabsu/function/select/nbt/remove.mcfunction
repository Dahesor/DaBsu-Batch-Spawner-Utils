data modify storage dabsu:run hold set from storage dabsu:run Selected
data modify storage dabsu:run Selected set value []
execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting_nbt",color:"gray",hover_event:{action:"show_text",value:{nbt:"nbt.obj",storage:"dabsu:run"}}}}
execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting_nbt_warn",color:"gray",hover_event:{action:"show_text",value:{nbt:"nbt.obj",storage:"dabsu:run"}}}}

function dabsu:z_private/select/nbt/start


scoreboard players set #mode calc.dabsu 0
function dabsu:z_private/select/modify/entry
scoreboard players reset $SelectedType calc.dabsu
execute if score $SelectedType selected.dabsu matches -2147483648..2147483647 run scoreboard players operation $SelectedType calc.dabsu = $SelectedType selected.dabsu
scoreboard players reset * selected.dabsu
execute if score $SelectedType calc.dabsu matches -2147483648..2147483647 run scoreboard players operation $SelectedType selected.dabsu = $SelectedType calc.dabsu
execute unless data storage dabsu:run Selected[].Chunks[].Objects[].type run scoreboard players reset $SelectedType

execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selecting_completed",color:"green",hover_event:{action:"show_text",value:{nbt:"nbt.obj",storage:"dabsu:run"}}}}
function dabsu:z_private/mod/buffer_select/start
