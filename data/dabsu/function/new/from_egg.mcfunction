# Generate a spawner from the spawn egg in hand
# 从手中刷怪蛋生成刷怪笼

execute unless items entity @s weapon #dabsu:spawn_eggs unless items entity @s weapon *[entity_data] run return run function dabsu:z_private/text/tellraw_self {text:{text:"not_spawn_egg",color:"red"}}

data modify storage dabsu:run entity_list set value []
data modify storage dabsu:run item set from entity @s SelectedItem

execute if data storage dabsu:run item{id:"minecraft:allay_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:allay"}
execute if data storage dabsu:run item{id:"minecraft:armadillo_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:armadillo"}
execute if data storage dabsu:run item{id:"minecraft:axolotl_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:axolotl"}
execute if data storage dabsu:run item{id:"minecraft:bat_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:bat"}
execute if data storage dabsu:run item{id:"minecraft:bee_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:bee"}
execute if data storage dabsu:run item{id:"minecraft:blaze_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:blaze"}
execute if data storage dabsu:run item{id:"minecraft:bogged_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:bogged"}
execute if data storage dabsu:run item{id:"minecraft:breeze_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:breeze"}
execute if data storage dabsu:run item{id:"minecraft:camel_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:camel"}
execute if data storage dabsu:run item{id:"minecraft:cat_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:cat"}
execute if data storage dabsu:run item{id:"minecraft:cave_spider_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:cave_spider"}
execute if data storage dabsu:run item{id:"minecraft:chicken_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:chicken"}
execute if data storage dabsu:run item{id:"minecraft:cod_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:cod"}
execute if data storage dabsu:run item{id:"minecraft:cow_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:cow"}
execute if data storage dabsu:run item{id:"minecraft:creaking_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:creaking"}
execute if data storage dabsu:run item{id:"minecraft:creeper_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:creeper"}
execute if data storage dabsu:run item{id:"minecraft:dolphin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:dolphin"}
execute if data storage dabsu:run item{id:"minecraft:donkey_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:donkey"}
execute if data storage dabsu:run item{id:"minecraft:drowned_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:drowned"}
execute if data storage dabsu:run item{id:"minecraft:elder_guardian_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:elder_guardian"}
execute if data storage dabsu:run item{id:"minecraft:enderman_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:enderman"}
execute if data storage dabsu:run item{id:"minecraft:endermite_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:endermite"}
execute if data storage dabsu:run item{id:"minecraft:evoker_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:evoker"}
execute if data storage dabsu:run item{id:"minecraft:fox_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:fox"}
execute if data storage dabsu:run item{id:"minecraft:frog_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:frog"}
execute if data storage dabsu:run item{id:"minecraft:ghast_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:ghast"}
execute if data storage dabsu:run item{id:"minecraft:glow_squid_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:glow_squid"}
execute if data storage dabsu:run item{id:"minecraft:goat_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:goat"}
execute if data storage dabsu:run item{id:"minecraft:guardian_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:guardian"}
execute if data storage dabsu:run item{id:"minecraft:hoglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:hoglin"}
execute if data storage dabsu:run item{id:"minecraft:horse_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:horse"}
execute if data storage dabsu:run item{id:"minecraft:husk_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:husk"}
execute if data storage dabsu:run item{id:"minecraft:iron_golem_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:iron_golem"}
execute if data storage dabsu:run item{id:"minecraft:llama_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:llama"}
execute if data storage dabsu:run item{id:"minecraft:magma_cube_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:magma_cube"}
execute if data storage dabsu:run item{id:"minecraft:mooshroom_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:mooshroom"}
execute if data storage dabsu:run item{id:"minecraft:mule_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:mule"}
execute if data storage dabsu:run item{id:"minecraft:ocelot_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:ocelot"}
execute if data storage dabsu:run item{id:"minecraft:panda_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:panda"}
execute if data storage dabsu:run item{id:"minecraft:parrot_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:parrot"}
execute if data storage dabsu:run item{id:"minecraft:phantom_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:phantom"}
execute if data storage dabsu:run item{id:"minecraft:pig_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:pig"}
execute if data storage dabsu:run item{id:"minecraft:piglin_brute_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:piglin_brute"}
execute if data storage dabsu:run item{id:"minecraft:piglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:piglin"}
execute if data storage dabsu:run item{id:"minecraft:pillager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:pillager"}
execute if data storage dabsu:run item{id:"minecraft:polar_bear_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:polar_bear"}
execute if data storage dabsu:run item{id:"minecraft:pufferfish_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:pufferfish"}
execute if data storage dabsu:run item{id:"minecraft:rabbit_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:rabbit"}
execute if data storage dabsu:run item{id:"minecraft:ravager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:ravager"}
execute if data storage dabsu:run item{id:"minecraft:salmon_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:salmon"}
execute if data storage dabsu:run item{id:"minecraft:sheep_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:sheep"}
execute if data storage dabsu:run item{id:"minecraft:shulker_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:shulker"}
execute if data storage dabsu:run item{id:"minecraft:silverfish_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:silverfish"}
execute if data storage dabsu:run item{id:"minecraft:skeleton_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:skeleton"}
execute if data storage dabsu:run item{id:"minecraft:skeleton_horse_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:skeleton_horse"}
execute if data storage dabsu:run item{id:"minecraft:slime_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:slime"}
execute if data storage dabsu:run item{id:"minecraft:sniffer_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:sniffer"}
execute if data storage dabsu:run item{id:"minecraft:snow_golem_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:snow_golem"}
execute if data storage dabsu:run item{id:"minecraft:spider_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:spider"}
execute if data storage dabsu:run item{id:"minecraft:squid_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:squid"}
execute if data storage dabsu:run item{id:"minecraft:stray_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:stray"}
execute if data storage dabsu:run item{id:"minecraft:strider_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:strider"}
execute if data storage dabsu:run item{id:"minecraft:tadpole_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:tadpole"}
execute if data storage dabsu:run item{id:"minecraft:trader_llama_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:trader_llama"}
execute if data storage dabsu:run item{id:"minecraft:tropical_fish_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:tropical_fish"}
execute if data storage dabsu:run item{id:"minecraft:turtle_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:turtle"}
execute if data storage dabsu:run item{id:"minecraft:vex_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:vex"}
execute if data storage dabsu:run item{id:"minecraft:villager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:villager"}
execute if data storage dabsu:run item{id:"minecraft:vindicator_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:vindicator"}
execute if data storage dabsu:run item{id:"minecraft:wandering_trader_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:wandering_trader"}
execute if data storage dabsu:run item{id:"minecraft:warden_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:warden"}
execute if data storage dabsu:run item{id:"minecraft:witch_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:witch"}
execute if data storage dabsu:run item{id:"minecraft:wither_skeleton_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:wither_skeleton"}
execute if data storage dabsu:run item{id:"minecraft:wolf_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:wolf"}
execute if data storage dabsu:run item{id:"minecraft:zoglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:zoglin"}
execute if data storage dabsu:run item{id:"minecraft:zombie_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:zombie"}
execute if data storage dabsu:run item{id:"minecraft:zombie_horse_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:zombie_horse"}
execute if data storage dabsu:run item{id:"minecraft:zombie_villager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:zombie_villager"}
execute if data storage dabsu:run item{id:"minecraft:zombified_piglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"minecraft:zombified_piglin"}

execute if data storage dabsu:run item.components."minecraft:entity_data" run data modify storage dabsu:run entity_data merge from storage dabsu:run item.components."minecraft:entity_data"
data modify storage dabsu:run entity_list append from storage dabsu:run entity_data
function dabsu:z_private/new/from_data