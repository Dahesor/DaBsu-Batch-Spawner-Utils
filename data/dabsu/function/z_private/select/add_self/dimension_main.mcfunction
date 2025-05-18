scoreboard players set $return calc.dabsu 0
function dabsu:z_private/select/add_self/__check_dimension with storage dabsu:run data
execute unless score $return calc.dabsu matches 1 run return run function dabsu:z_private/select/add_self/new_dimension

function dabsu:z_private/select/add_self/__rotate_dimension with storage dabsu:run data