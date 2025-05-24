function dabsu:z_private/mod/get_this/__rotate_dimension with storage dabsu:run Selected[0]
execute store result score $C calc.dabsu if data storage dabsu:run Selected[0].Chunks[]
function dabsu:z_private/mod/refactor/reselect/c_loop

scoreboard players remove $D calc.dabsu 1
data modify storage dabsu:run Selected append from storage dabsu:run Selected[0]
data remove storage dabsu:run Selected[0]
execute if score $D calc.dabsu matches 1.. run function dabsu:z_private/mod/refactor/reselect/d_loop