function dabsu:z_private/text/get
function dabsu:z_private_d/templates/settings/global

scoreboard players set @s waiting.dabsu 5
scoreboard players enable @s input.dabsu

execute if score disableActionbar Option.dabsu matches -1 run data modify storage dabsu:run dialog.dialog.inputs[0].initial set value 0b
execute if score disableSubtitle Option.dabsu matches -1 run data modify storage dabsu:run dialog.dialog.inputs[1].initial set value 0b

scoreboard players operation #temp Option.dabsu = run.SelectionRate Option.dabsu
execute if score #temp Option.dabsu matches ..1000 run scoreboard players set #temp Option.dabsu 1000
execute if score #temp Option.dabsu matches 5000.. run scoreboard players set #temp Option.dabsu 5000

execute store result storage dabsu:run dialog.dialog.inputs[2].initial int 1 run scoreboard players get #temp Option.dabsu


scoreboard players operation #temp Option.dabsu = run.ChunkReadingRate Option.dabsu
execute if score #temp Option.dabsu matches ..2 run scoreboard players set #temp Option.dabsu 2
execute if score #temp Option.dabsu matches 31.. run scoreboard players set #temp Option.dabsu 30

execute store result storage dabsu:run dialog.dialog.inputs[3].initial int 1 run scoreboard players get #temp Option.dabsu




function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog