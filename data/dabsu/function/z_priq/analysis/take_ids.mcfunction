data modify storage dabsu:run templist prepend from storage dabsu:run spawner.SpawnPotentials[0]
#Clear Entity Data
data modify storage dabsu:run templist[0].data.entity set from storage dabsu:run run
#Clear Equipments
data remove storage dabsu:run templist[0].data.equipment
#Only Takes IDs
data modify storage dabsu:run templist[0].data.entity.id set from storage dabsu:run spawner.SpawnPotentials[0].data.entity.id

execute if data storage dabsu:run templist[0].data.entity{id:"end_crystal"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"
execute if data storage dabsu:run templist[0].data.entity{id:"minecraft:end_crystal"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"
execute if data storage dabsu:run templist[0].data.entity{id:"fireball"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"
execute if data storage dabsu:run templist[0].data.entity{id:"minecraft:fireball"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"
execute if data storage dabsu:run templist[0].data.entity{id:"small_fireball"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"
execute if data storage dabsu:run templist[0].data.entity{id:"minecraft:small_fireball"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"
execute if data storage dabsu:run templist[0].data.entity{id:"tnt_minecart"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"
execute if data storage dabsu:run templist[0].data.entity{id:"minecraft:tnt_minecart"} run data modify storage dabsu:run templist[0].data.entity.id set value "minecraft:marker"


#Give Tags
data modify storage dabsu:run templist[0].data.entity merge value {Tags:["dabsu.analyzer"],active_effects:[{id:"invisibility",ambient:0b,show_icon:0b,show_particles:0b,amplifier:0,duration:40}],Silent:1b,data:{},DeathLootTable:"dabsu:empty"}
data modify storage dabsu:run templist[0].data.entity.data.from_user set from storage dabsu:user data[0]
#Loop
data remove storage dabsu:run spawner.SpawnPotentials[0]
execute if data storage dabsu:run spawner.SpawnPotentials[0] run function dabsu:z_priq/analysis/take_ids