scoreboard players set $return calc.dabsu 0
data modify storage dabsu:run temp set value {x:0,z:0}
execute store result storage dabsu:run temp.x int 1 run scoreboard players get #cx calc.dabsu
execute store result storage dabsu:run temp.z int 1 run scoreboard players get #cz calc.dabsu

function dabsu:z_private/mod/get_chunk/__check_chunk with storage dabsu:run temp
execute unless score $return calc.dabsu matches 1 run return run function dabsu:z_private/mod/get_chunk/new_chunk

function dabsu:z_private/mod/get_chunk/__rotate_chunk with storage dabsu:run temp