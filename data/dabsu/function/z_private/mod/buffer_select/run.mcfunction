scoreboard players remove #count calc.dabsu 1
data modify storage dabsu:run run.UUID set from storage dabsu:run buffer[0]
data remove storage dabsu:run buffer[0]
function dabsu:z_private/mod/buffer_select/macro with storage dabsu:run run
execute unless data storage dabsu:run buffer[0] run return 1
execute unless score #count calc.dabsu matches ..0 run function dabsu:z_private/mod/buffer_select/run