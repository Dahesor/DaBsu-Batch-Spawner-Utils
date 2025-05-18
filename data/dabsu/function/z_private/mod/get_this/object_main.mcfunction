scoreboard players set $return calc.dabsu 0
function dabsu:z_private/mod/get_this/__check_object with storage dabsu:run data
execute unless score $return calc.dabsu matches 1 run return fail

function dabsu:z_private/mod/get_this/__rotate_object with storage dabsu:run data
return 1