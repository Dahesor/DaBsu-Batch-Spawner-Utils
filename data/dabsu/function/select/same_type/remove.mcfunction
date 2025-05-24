execute unless block ~ ~-0.5 ~ spawner run return run function dabsu:z_private/text/tellraw_self {text:{text:"no_spawner_below",color:"red"}}

data modify storage dabsu:run hold set from storage dabsu:run Selected
data modify storage dabsu:run Selected set value []
function dabsu:z_private/text/tellraw_self {text:{text:"modifying_same_type",color:"gray"}}
function dabsu:z_private/select/type/mod

scoreboard players set #mode calc.dabsu 0
function dabsu:z_private/select/modify/entry
scoreboard players reset $SelectedType calc.dabsu
execute if score $SelectedType selected.dabsu matches -2147483648..2147483647 run scoreboard players operation $SelectedType calc.dabsu = $SelectedType selected.dabsu
scoreboard players reset * selected.dabsu
execute if score $SelectedType calc.dabsu matches -2147483648..2147483647 run scoreboard players operation $SelectedType selected.dabsu = $SelectedType calc.dabsu
execute unless data storage dabsu:run Selected[].Chunks[].Objects[].type run scoreboard players reset $SelectedType

function dabsu:z_private/mod/buffer_select/start