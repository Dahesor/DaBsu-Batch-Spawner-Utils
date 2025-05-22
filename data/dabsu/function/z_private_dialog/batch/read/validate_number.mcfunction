scoreboard players set #validate calc.dabsu -1
function dabsu:z_private_dialog/batch/read/__validate_number with storage dabsu:run char
execute if score #validate calc.dabsu matches 0..9 run return 1
return fail