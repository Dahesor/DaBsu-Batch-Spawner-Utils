execute store result score $O calc.dabsu if data storage dabsu:run Selected[0].Chunks[0].Objects[]
function dabsu:z_private/mod/get_this/__rotate_chunk with storage dabsu:run Selected[0].Chunks[0]
function dabsu:z_private/mod/refactor/reselect/o_loop

scoreboard players remove $C calc.dabsu 1
data modify storage dabsu:run Selected[0].Chunks append from storage dabsu:run Selected[0].Chunks[0]
data remove storage dabsu:run Selected[0].Chunks[0]
execute if score $C calc.dabsu matches 1.. run function dabsu:z_private/mod/refactor/reselect/c_loop