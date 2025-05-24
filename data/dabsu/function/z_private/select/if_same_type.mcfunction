#tellraw @a [{score:{name:"$SelectedType", objective:"selected.dabsu"}, color:"dark_aqua"}," -->",{score:{name:"$ThisType", objective:"selected.dabsu"}, color:"dark_aqua"}]

execute unless score $SelectedType selected.dabsu matches -1.. run return run scoreboard players operation $SelectedType selected.dabsu = $ThisType selected.dabsu
execute if score $SelectedType selected.dabsu matches ..-1 run return fail
execute unless score $SelectedType selected.dabsu = $ThisType selected.dabsu run scoreboard players set $SelectedType selected.dabsu -1