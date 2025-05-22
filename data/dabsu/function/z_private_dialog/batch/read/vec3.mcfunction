data modify storage dabsu:run char set value {char:"0"}

scoreboard players set #num calc.dabsu 0
function dabsu:z_private_dialog/batch/read/check_negative
execute store result score $x calc.dabsu run function dabsu:z_private_dialog/batch/read/string_to_num
execute if score #neg calc.dabsu matches 1 run scoreboard players operation $x calc.dabsu *= #-1 calc.dabsu

data modify storage dabsu:run string_to_num set string storage dabsu:run string_to_num 1
scoreboard players set #num calc.dabsu 0
function dabsu:z_private_dialog/batch/read/check_negative
execute store result score $y calc.dabsu run function dabsu:z_private_dialog/batch/read/string_to_num
execute if score #neg calc.dabsu matches 1 run scoreboard players operation $y calc.dabsu *= #-1 calc.dabsu

data modify storage dabsu:run string_to_num set string storage dabsu:run string_to_num 1
scoreboard players set #num calc.dabsu 0
function dabsu:z_private_dialog/batch/read/check_negative
execute store result score $z calc.dabsu run function dabsu:z_private_dialog/batch/read/string_to_num
execute if score #neg calc.dabsu matches 1 run scoreboard players operation $z calc.dabsu *= #-1 calc.dabsu