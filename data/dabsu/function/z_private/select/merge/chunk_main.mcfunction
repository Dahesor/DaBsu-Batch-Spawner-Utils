execute unless data storage dabsu:run hold[0].Chunks[0].Objects[0] run return fail

scoreboard players set $return calc.dabsu 0
function dabsu:z_private/select/add_self/__check_chunk with storage dabsu:run hold[0].Chunks[0]
execute if score $return calc.dabsu matches 0 run return run data modify storage dabsu:run Selected[0].Chunks append from storage dabsu:run hold[0].Chunks[0]


function dabsu:z_private/select/add_self/__rotate_chunk with storage dabsu:run hold[0].Chunks[0]
execute unless data storage dabsu:run hold[0].Chunks[0].Objects[0] run return run data modify storage dabsu:run hold[0].Chunks[0].Objects set from storage dabsu:run hold[0].Chunks[0].Objects

function dabsu:z_private/select/merge/loop_object