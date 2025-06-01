function dabsu:z_private/text/get
function dabsu:z_private_d/templates/settings/scan

scoreboard players enable @s input.dabsu
scoreboard players set @s waiting.dabsu 4

execute unless score @s register_range.dabsu matches 10000.. unless score @s register_range.dabsu matches ..-10000 run scoreboard players set @s register_range.dabsu 123125
function dabsu:z_private/wand/register/get_data
execute if score %pierce calc.dabsu matches 1 run data modify storage dabsu:run dialog.dialog.inputs[0].initial set value true
execute store result storage dabsu:run dialog.dialog.inputs[1].initial int 1 run scoreboard players get %hit_scan calc.dabsu
execute store result storage dabsu:run dialog.dialog.inputs[2].initial int 1 run scoreboard players get %path_scan calc.dabsu
execute store result storage dabsu:run dialog.dialog.inputs[3].initial int 1 run scoreboard players get %distance calc.dabsu

function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog