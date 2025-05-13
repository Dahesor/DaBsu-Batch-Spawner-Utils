scoreboard objectives add calc.dabsu dummy
scoreboard objectives add lang.dabsu dummy
scoreboard objectives add Option.dabsu dummy

scoreboard players set #loaded calc.dabsu 1

function dabsu:z_private/text/init
execute unless data storage dabsu:run defaultSpawner run function dabsu:z_private/init/default_spawner
execute unless data storage dabsu:run defaultElement run function dabsu:z_private/init/default_element

execute unless score minDefaultBlockLight Option.dabsu matches 0.. run scoreboard players set minDefaultBlockLight Option.dabsu 0
execute unless score maxDefaultBlockLight Option.dabsu matches 0.. run scoreboard players set maxDefaultBlockLight Option.dabsu 7
execute unless score minDefaultSkyLight Option.dabsu matches 0.. run scoreboard players set minDefaultSkyLight Option.dabsu 0
execute unless score maxDefaultSkyLight Option.dabsu matches 0.. run scoreboard players set maxDefaultSkyLight Option.dabsu 15