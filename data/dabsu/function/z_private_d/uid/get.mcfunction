data modify storage dabsu:user UID_GET_ set value {UID:-1}
execute store result storage dabsu:user UID_GET_.UID int 1 run scoreboard players get @s uid.dabsu

execute unless function dabsu:z_private_d/uid/validate run return run function dabsu:z_private_d/uid/new

function dabsu:z_private_d/uid/__rotate with storage dabsu:user UID_GET_