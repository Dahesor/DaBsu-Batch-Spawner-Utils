scoreboard players set $return calc.dabsu 0
data modify storage dabsu:run temp set value {x:0,z:0}
data modify storage dabsu:run temp set from storage dabsu:run data.chunk

function dabsu:z_private/select/add_self/__check_chunk with storage dabsu:run temp
execute unless score $return calc.dabsu matches 1 run return run function dabsu:z_private/select/add_self/new_chunk

function dabsu:z_private/select/add_self/__rotate_chunk with storage dabsu:run temp