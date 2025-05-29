data modify storage dabsu:run attribute set from storage dabsu:run element.data.entity.attributes

execute if data storage dabsu:run attribute[{id:"max_health"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"max_health"}
execute if data storage dabsu:run attribute[{id:"armor"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"armor"}
execute if data storage dabsu:run attribute[{id:"armor_toughness"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"armor_toughness"}
execute if data storage dabsu:run attribute[{id:"attack_damage"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"attack_damage"}
execute if data storage dabsu:run attribute[{id:"attack_knockback"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"attack_knockback"}
execute if data storage dabsu:run attribute[{id:"knockback_resistance"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"knockback_resistance"}
execute if data storage dabsu:run attribute[{id:"movement_speed"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"movement_speed"}


data modify storage dabsu:run run set value {index:4,initial:0.0d}
execute if data storage dabsu:run attribute[{id:"minecraft:armor"}].base run data modify storage dabsu:run run.initial set from storage dabsu:run attribute[{id:"minecraft:armor"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:armor"}].base run function dabsu:z_priq/menu/gen/__att_initial with storage dabsu:run run

data modify storage dabsu:run run set value {index:5,initial:0.0d}
execute if data storage dabsu:run attribute[{id:"minecraft:armor_toughness"}].base run data modify storage dabsu:run run.initial set from storage dabsu:run attribute[{id:"minecraft:armor_toughness"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:armor_toughness"}].base run function dabsu:z_priq/menu/gen/__att_initial with storage dabsu:run run

data modify storage dabsu:run run set value {index:0,initial:0.0d}
execute if data storage dabsu:run attribute[{id:"minecraft:attack_damage"}].base run data modify storage dabsu:run run.initial set from storage dabsu:run attribute[{id:"minecraft:attack_damage"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:attack_damage"}].base run function dabsu:z_priq/menu/gen/__att_initial with storage dabsu:run run

data modify storage dabsu:run run set value {index:1,initial:0.0d}
execute if data storage dabsu:run attribute[{id:"minecraft:attack_knockback"}].base run data modify storage dabsu:run run.initial set from storage dabsu:run attribute[{id:"minecraft:attack_knockback"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:attack_knockback"}].base run function dabsu:z_priq/menu/gen/__att_initial with storage dabsu:run run

data modify storage dabsu:run run set value {index:3,initial:0.0d}
execute if data storage dabsu:run attribute[{id:"minecraft:movement_speed"}].base run data modify storage dabsu:run run.initial set from storage dabsu:run attribute[{id:"minecraft:movement_speed"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:movement_speed"}].base run function dabsu:z_priq/menu/gen/__att_initial with storage dabsu:run run

data modify storage dabsu:run run set value {index:6,initial:0.0d}
execute if data storage dabsu:run attribute[{id:"minecraft:knockback_resistance"}].base run data modify storage dabsu:run run.initial set from storage dabsu:run attribute[{id:"minecraft:knockback_resistance"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:knockback_resistance"}].base run function dabsu:z_priq/menu/gen/__att_initial with storage dabsu:run run

data modify storage dabsu:run run set value {index:2,initial:0.0d}
execute if data storage dabsu:run attribute[{id:"minecraft:max_health"}].base run data modify storage dabsu:run run.initial set from storage dabsu:run attribute[{id:"minecraft:max_health"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:max_health"}].base run function dabsu:z_priq/menu/gen/__att_initial with storage dabsu:run run