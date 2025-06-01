function dabsu:z_private/text/get
execute if score !busy calc.dabsu matches 1 run return run function dabsu:z_private_d/batch/settings/system_busy

function dabsu:z_private_d/templates/edit/change_delay

scoreboard players set @s waiting.dabsu 1
scoreboard players enable @s input.dabsu

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog