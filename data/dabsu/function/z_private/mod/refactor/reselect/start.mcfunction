scoreboard players reset $SelectedType selected.dabsu
data modify storage dabsu:run temp2 set value {}

execute store result score $D calc.dabsu if data storage dabsu:run Selected[].Chunks[].Objects[]
execute unless score $D calc.dabsu matches 1.. run return fail
execute store result score $D calc.dabsu if data storage dabsu:run Selected[]

function dabsu:z_private/mod/refactor/reselect/d_loop