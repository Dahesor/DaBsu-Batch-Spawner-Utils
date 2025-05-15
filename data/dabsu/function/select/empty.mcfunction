# Empty the selected spawner list
# 清空已选定的刷怪笼

data modify storage dabsu:run Selected set value []
scoreboard players reset * selected.dabsu
function dabsu:z_private/text/tellraw_self {text:{text:"selection_cleared",color:"aqua"}}