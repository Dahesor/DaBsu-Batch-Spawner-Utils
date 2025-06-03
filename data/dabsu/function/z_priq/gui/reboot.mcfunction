scoreboard players operation #this uid.dabsu = @s uid.dabsu
function dabsu:z_private_d/uid/get
execute if data storage dabsu:user data[0].settings{disableDisplayTiles:true} run return fail

data modify storage dabsu:run data set from entity @s data
data modify storage dabsu:run spawner set from block ~ ~ ~
execute store result score #current calc.dabsu run data get storage dabsu:run data.last_edit.SpawnRange
execute store result score #new calc.dabsu run data get storage dabsu:run spawner.SpawnRange
execute unless score #current calc.dabsu = #new calc.dabsu run function dabsu:z_priq/gui/boot/reboot/spawn_range

execute store result score #current calc.dabsu run data get storage dabsu:run data.last_edit.RequiredPlayerRange
execute store result score #new calc.dabsu run data get storage dabsu:run spawner.RequiredPlayerRange
execute unless score #current calc.dabsu = #new calc.dabsu run function dabsu:z_priq/gui/boot/reboot/player_range

execute store result score #current calc.dabsu run data get storage dabsu:run data.last_edit.SpawnCount
execute store result score #new calc.dabsu run data get storage dabsu:run spawner.SpawnCount
execute unless score #current calc.dabsu = #new calc.dabsu run function dabsu:z_priq/gui/boot/reboot/spawn_count


function dabsu:z_priq/gui/edit/update_data
execute as @e[type=#dabsu:quick_display,tag=dabsu.displayer,tag=dabsu.gui_edit,tag=dabsu.temp] run function dabsu:z_priq/gui/boot/init