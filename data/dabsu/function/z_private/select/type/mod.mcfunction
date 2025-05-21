data modify storage dabsu:run type set value {this:-1}

execute positioned ~ ~-0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=dabsu.marker,distance=..0.1] run function dabsu:z_private/mod/save_new/save

data modify storage dabsu:run data set from entity @e[type=marker,tag=dabsu.marker,distance=..0.1,limit=1] data

execute positioned ~ ~-0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run data modify storage dabsu:run data set from entity @e[type=marker,tag=dabsu.marker,distance=..0.1,limit=1] data

execute store result storage dabsu:run type.this int 1 run data get storage dabsu:run data.type


function dabsu:z_private/text/tellraw_self {text:{text:"selecting_same_type",color:"gray",hover_event:{action:"show_text",value:{nbt:"data.spawner.SpawnPotentials",storage:"dabsu:run",color:"white"}}}}
function dabsu:z_private/select/type/expand