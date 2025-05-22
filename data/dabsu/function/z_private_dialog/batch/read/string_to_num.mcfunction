data modify storage dabsu:run char.char set string storage dabsu:run string_to_num 0 1

execute unless function dabsu:z_private_dialog/batch/read/validate_number run return run scoreboard players get #num calc.dabsu
scoreboard players operation #num calc.dabsu *= #10 calc.dabsu

scoreboard players operation #num calc.dabsu += #validate calc.dabsu
data modify storage dabsu:run string_to_num set string storage dabsu:run string_to_num 1
execute unless data storage dabsu:run {string_to_num:""} run function dabsu:z_private_dialog/batch/read/string_to_num
return run scoreboard players get #num calc.dabsu