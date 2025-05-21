execute unless block ~ ~-0.5 ~ spawner run return run function dabsu:z_private/text/tellraw_self {text:{text:"no_spawner_below",color:"red"}}

data modify storage dabsu:run hold set from storage dabsu:run Selected
data modify storage dabsu:run Selected set value []
function dabsu:z_private/select/type/mod
function dabsu:z_private/select/merge/enter