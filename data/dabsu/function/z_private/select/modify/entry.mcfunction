execute unless data storage dabsu:run Selected[].Chunks[].Objects[].sUUID run return run function dabsu:z_private/select/modify/nothing

data modify storage dabsu:run result set from storage dabsu:run Selected
data modify storage dabsu:run Selected set from storage dabsu:run hold
data modify storage dabsu:run hold set value []

execute if score #mode calc.dabsu matches 1 run data modify storage dabsu:run Selected[].Chunks[].Objects[].mark set value 0b
function dabsu:z_private/select/modify/loop_di
execute if score #mode calc.dabsu matches 1 run data remove storage dabsu:run Selected[].Chunks[].Objects[{mark:0b}]
