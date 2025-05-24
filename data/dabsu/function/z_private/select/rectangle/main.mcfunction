#Why this is here? I don't care, it runs.
data modify storage dabsu:run run set value {in:""}
data modify storage dabsu:run run.in set from storage dabsu:run in

#Get Dimension
function dabsu:z_private/mod/get_this/__check_dimension with storage dabsu:run run
execute unless score $return calc.dabsu matches 1 run return fail
function dabsu:z_private/mod/get_this/__rotate_dimension with storage dabsu:run run

data modify storage dabsu:run Selected set value [{Chunks:[]}]
data modify storage dabsu:run Selected[0].in set from storage dabsu:run in

scoreboard players operation $x calc.dabsu < $dx calc.dabsu
scoreboard players operation $y calc.dabsu < $dy calc.dabsu
scoreboard players operation $z calc.dabsu < $dz calc.dabsu

execute if score $x calc.dabsu = $dx calc.dabsu run scoreboard players operation $dx calc.dabsu = $x z_hold.dabsu
execute if score $y calc.dabsu = $dy calc.dabsu run scoreboard players operation $dy calc.dabsu = $y z_hold.dabsu
execute if score $z calc.dabsu = $dz calc.dabsu run scoreboard players operation $dz calc.dabsu = $z z_hold.dabsu

data modify storage dabsu:run Chunks set from storage dabsu:run Dimensions[0].Chunks
scoreboard players set %select_count calc.dabsu 0
function dabsu:z_private/select/rectangle/loop