function dabsu:z_private/mod/refactor/reselect/__grab_obj with storage dabsu:run Selected[0].Chunks[0].Objects[0]

data modify storage dabsu:run Selected[0].Chunks[0].Objects[0].type set from storage dabsu:run temp2.type

execute unless score $SelectedType selected.dabsu matches ..-1 run function dabsu:z_private/mod/refactor/reselect/check_type

scoreboard players remove $O calc.dabsu 1
data modify storage dabsu:run Selected[0].Chunks[0].Objects append from storage dabsu:run Selected[0].Chunks[0].Objects[0]
data remove storage dabsu:run Selected[0].Chunks[0].Objects[0]
execute if score $O calc.dabsu matches 1.. run function dabsu:z_private/mod/refactor/reselect/o_loop