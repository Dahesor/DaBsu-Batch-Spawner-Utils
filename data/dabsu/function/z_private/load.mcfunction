execute if data storage dabsu:sys {hibernate:true} run return fail
scoreboard objectives add calc.dabsu dummy
scoreboard objectives add lang.dabsu trigger
scoreboard objectives add Option.dabsu dummy
scoreboard objectives add highlight.dabsu dummy
scoreboard objectives add selected.dabsu dummy
scoreboard objectives add leave_game.dabsu custom:leave_game
scoreboard objectives add uid.dabsu dummy
scoreboard objectives add trigger.dabsu trigger
scoreboard objectives add input.dabsu trigger
scoreboard objectives add waiting.dabsu dummy
scoreboard objectives add dropWand.dabsu dropped:ghast_tear
scoreboard objectives add register_range.dabsu trigger
scoreboard objectives add timeStamp.dabsu dummy
scoreboard objectives add ctrl.dabsu dummy
scoreboard objectives add ctrl_data.dabsu dummy
scoreboard objectives add ctrl_wait.dabsu dummy
scoreboard objectives add opcd.dabsu dummy

execute store result score #maxCommand calc.dabsu run gamerule maxCommandChainLength
execute unless score #maxCommand calc.dabsu matches 3276750.. run gamerule maxCommandChainLength 3276750
scoreboard players reset #maxCommand calc.dabsu

scoreboard players set #-1 calc.dabsu -1
scoreboard players set #2 calc.dabsu 2
scoreboard players set #10 calc.dabsu 10
scoreboard players set #14 calc.dabsu 14
scoreboard players set #16 calc.dabsu 16
scoreboard players set #25 calc.dabsu 25
scoreboard players set #39 calc.dabsu 39
scoreboard players set #50 calc.dabsu 50
scoreboard players set #100 calc.dabsu 100
scoreboard players set #1000 calc.dabsu 1000
scoreboard players set #10000 calc.dabsu 10000
scoreboard players set #100000 calc.dabsu 100000
scoreboard players set #1000000 calc.dabsu 1000000

function dabsu:z_private/mod/version

data modify storage dabsu:run input set value {key:""}

function dabsu:z_private/text/init
execute unless data storage dabsu:run defaultSpawner run function dabsu:z_private/init/default_spawner
execute unless data storage dabsu:run defaultElement run function dabsu:z_private/init/default_element

execute unless score minDefaultBlockLight Option.dabsu matches 0.. run scoreboard players set minDefaultBlockLight Option.dabsu 0
execute unless score maxDefaultBlockLight Option.dabsu matches 0.. run scoreboard players set maxDefaultBlockLight Option.dabsu 7
execute unless score minDefaultSkyLight Option.dabsu matches 0.. run scoreboard players set minDefaultSkyLight Option.dabsu 0
execute unless score maxDefaultSkyLight Option.dabsu matches 0.. run scoreboard players set maxDefaultSkyLight Option.dabsu 15
execute unless score run.SelectionRate Option.dabsu matches 0.. run scoreboard players set run.SelectionRate Option.dabsu 2000
execute unless score run.ChunkReadingRate Option.dabsu matches 0.. run scoreboard players set run.ChunkReadingRate Option.dabsu 10

return 1
scoreboard players set $default lang.dabsu 0