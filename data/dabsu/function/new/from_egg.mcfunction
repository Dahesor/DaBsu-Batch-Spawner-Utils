execute unless items entity @s weapon #dabsu:spawn_eggs unless items entity @s weapon *[entity_data] run return run function dabsu:z_private/text/tellraw {text:{text:"not_spawn_egg",color:"red"}}

data modify storage dabsu:run entity_list set value []
data modify storage dabsu:run item set from entity @s SelectedItem

execute if data storage dabsu:run item{id:"minecraft:allay_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"allay"}
execute if data storage dabsu:run item{id:"minecraft:armadillo_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"armadillo"}
execute if data storage dabsu:run item{id:"minecraft:axolotl_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"axolotl"}
execute if data storage dabsu:run item{id:"minecraft:bat_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"bat"}
execute if data storage dabsu:run item{id:"minecraft:bee_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"bee"}
execute if data storage dabsu:run item{id:"minecraft:blaze_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"blaze"}
execute if data storage dabsu:run item{id:"minecraft:bogged_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"bogged"}
execute if data storage dabsu:run item{id:"minecraft:breeze_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"breeze"}
execute if data storage dabsu:run item{id:"minecraft:camel_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"camel"}
execute if data storage dabsu:run item{id:"minecraft:cat_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"cat"}
execute if data storage dabsu:run item{id:"minecraft:cave_spider_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"cave_spider"}
execute if data storage dabsu:run item{id:"minecraft:chicken_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"chicken"}
execute if data storage dabsu:run item{id:"minecraft:cod_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"cod"}
execute if data storage dabsu:run item{id:"minecraft:cow_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"cow"}
execute if data storage dabsu:run item{id:"minecraft:creaking_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"creaking"}
execute if data storage dabsu:run item{id:"minecraft:creeper_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"creeper"}
execute if data storage dabsu:run item{id:"minecraft:dolphin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"dolphin"}
execute if data storage dabsu:run item{id:"minecraft:donkey_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"donkey"}
execute if data storage dabsu:run item{id:"minecraft:drowned_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"drowned"}
execute if data storage dabsu:run item{id:"minecraft:elder_guardian_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"elder_guardian"}
execute if data storage dabsu:run item{id:"minecraft:enderman_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"enderman"}
execute if data storage dabsu:run item{id:"minecraft:endermite_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"endermite"}
execute if data storage dabsu:run item{id:"minecraft:evoker_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"evoker"}
execute if data storage dabsu:run item{id:"minecraft:fox_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"fox"}
execute if data storage dabsu:run item{id:"minecraft:frog_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"frog"}
execute if data storage dabsu:run item{id:"minecraft:ghast_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"ghast"}
execute if data storage dabsu:run item{id:"minecraft:glow_squid_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"glow_squid"}
execute if data storage dabsu:run item{id:"minecraft:goat_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"goat"}
execute if data storage dabsu:run item{id:"minecraft:guardian_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"guardian"}
execute if data storage dabsu:run item{id:"minecraft:hoglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"hoglin"}
execute if data storage dabsu:run item{id:"minecraft:horse_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"horse"}
execute if data storage dabsu:run item{id:"minecraft:husk_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"husk"}
execute if data storage dabsu:run item{id:"minecraft:iron_golem_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"iron_golem"}
execute if data storage dabsu:run item{id:"minecraft:llama_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"llama"}
execute if data storage dabsu:run item{id:"minecraft:magma_cube_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"magma_cube"}
execute if data storage dabsu:run item{id:"minecraft:mooshroom_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"mooshroom"}
execute if data storage dabsu:run item{id:"minecraft:mule_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"mule"}
execute if data storage dabsu:run item{id:"minecraft:ocelot_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"ocelot"}
execute if data storage dabsu:run item{id:"minecraft:panda_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"panda"}
execute if data storage dabsu:run item{id:"minecraft:parrot_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"parrot"}
execute if data storage dabsu:run item{id:"minecraft:phantom_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"phantom"}
execute if data storage dabsu:run item{id:"minecraft:pig_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"pig"}
execute if data storage dabsu:run item{id:"minecraft:piglin_brute_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"piglin_brute"}
execute if data storage dabsu:run item{id:"minecraft:piglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"piglin"}
execute if data storage dabsu:run item{id:"minecraft:pillager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"pillager"}
execute if data storage dabsu:run item{id:"minecraft:polar_bear_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"polar_bear"}
execute if data storage dabsu:run item{id:"minecraft:pufferfish_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"pufferfish"}
execute if data storage dabsu:run item{id:"minecraft:rabbit_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"rabbit"}
execute if data storage dabsu:run item{id:"minecraft:ravager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"ravager"}
execute if data storage dabsu:run item{id:"minecraft:salmon_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"salmon"}
execute if data storage dabsu:run item{id:"minecraft:sheep_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"sheep"}
execute if data storage dabsu:run item{id:"minecraft:shulker_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"shulker"}
execute if data storage dabsu:run item{id:"minecraft:silverfish_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"silverfish"}
execute if data storage dabsu:run item{id:"minecraft:skeleton_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"skeleton"}
execute if data storage dabsu:run item{id:"minecraft:skeleton_horse_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"skeleton_horse"}
execute if data storage dabsu:run item{id:"minecraft:slime_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"slime"}
execute if data storage dabsu:run item{id:"minecraft:sniffer_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"sniffer"}
execute if data storage dabsu:run item{id:"minecraft:snow_golem_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"snow_golem"}
execute if data storage dabsu:run item{id:"minecraft:spider_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"spider"}
execute if data storage dabsu:run item{id:"minecraft:squid_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"squid"}
execute if data storage dabsu:run item{id:"minecraft:stray_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"stray"}
execute if data storage dabsu:run item{id:"minecraft:strider_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"strider"}
execute if data storage dabsu:run item{id:"minecraft:tadpole_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"tadpole"}
execute if data storage dabsu:run item{id:"minecraft:trader_llama_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"trader_llama"}
execute if data storage dabsu:run item{id:"minecraft:tropical_fish_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"tropical_fish"}
execute if data storage dabsu:run item{id:"minecraft:turtle_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"turtle"}
execute if data storage dabsu:run item{id:"minecraft:vex_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"vex"}
execute if data storage dabsu:run item{id:"minecraft:villager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"villager"}
execute if data storage dabsu:run item{id:"minecraft:vindicator_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"vindicator"}
execute if data storage dabsu:run item{id:"minecraft:wandering_trader_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"wandering_trader"}
execute if data storage dabsu:run item{id:"minecraft:warden_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"warden"}
execute if data storage dabsu:run item{id:"minecraft:witch_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"witch"}
execute if data storage dabsu:run item{id:"minecraft:wither_skeleton_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"wither_skeleton"}
execute if data storage dabsu:run item{id:"minecraft:wolf_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"wolf"}
execute if data storage dabsu:run item{id:"minecraft:zoglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"zoglin"}
execute if data storage dabsu:run item{id:"minecraft:zombie_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"zombie"}
execute if data storage dabsu:run item{id:"minecraft:zombie_horse_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"zombie_horse"}
execute if data storage dabsu:run item{id:"minecraft:zombie_villager_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"zombie_villager"}
execute if data storage dabsu:run item{id:"minecraft:zombified_piglin_spawn_egg"} run data modify storage dabsu:run entity_data set value {id:"zombified_piglin"}

execute if data storage dabsu:run item.components."minecraft:entity_data" run data modify storage dabsu:run entity_data merge from storage dabsu:run item.components."minecraft:entity_data"
data modify storage dabsu:run entity_list append from storage dabsu:run entity_data
function dabsu:z_private/new/from_data