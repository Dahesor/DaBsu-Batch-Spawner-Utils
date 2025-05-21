scoreboard players set $return calc.dabsu 0
function dabsu:z_private/select/merge/__check_uuid with storage dabsu:run hold[0].Chunks[0].Objects[0]

execute if score $return calc.dabsu matches 0 run data modify storage dabsu:run Selected[0].Chunks[0].Objects append from storage dabsu:run hold[0].Chunks[0].Objects[0]

data remove storage dabsu:run hold[0].Chunks[0].Objects[0]
execute if data storage dabsu:run hold[0].Chunks[0].Objects[0] run function dabsu:z_private/select/merge/loop_object