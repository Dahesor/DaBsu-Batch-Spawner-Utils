$data modify storage dabsu:run form set value $(form)
function dabsu:z_private/modify/common/__get_original_att with storage dabsu:run form

execute if data storage dabsu:run attribute[{id:"max_health"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"max_health"}
execute if data storage dabsu:run attribute[{id:"armor"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"armor"}
execute if data storage dabsu:run attribute[{id:"armor_toughness"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"armor_toughness"}
execute if data storage dabsu:run attribute[{id:"attack_damage"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"attack_damage"}
execute if data storage dabsu:run attribute[{id:"attack_knockback"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"attack_knockback"}
execute if data storage dabsu:run attribute[{id:"knockback_resistance"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"knockback_resistance"}
execute if data storage dabsu:run attribute[{id:"movement_speed"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"movement_speed"}

execute if data storage dabsu:run form.attribute."minecraft:armor" run function dabsu:z_private/modify/common/att/armor
execute if data storage dabsu:run form.attribute."minecraft:armor_toughness" run function dabsu:z_private/modify/common/att/toughness
execute if data storage dabsu:run form.attribute."minecraft:attack_damage" run function dabsu:z_private/modify/common/att/attack
execute if data storage dabsu:run form.attribute."minecraft:attack_knockback" run function dabsu:z_private/modify/common/att/knockback
execute if data storage dabsu:run form.attribute."minecraft:max_health" run function dabsu:z_private/modify/common/att/health
execute if data storage dabsu:run form.attribute."minecraft:knockback_resistance" run function dabsu:z_private/modify/common/att/knock_res
execute if data storage dabsu:run form.attribute."minecraft:movement_speed" run function dabsu:z_private/modify/common/att/speed

execute unless data storage dabsu:run form.attribute."minecraft:armor" run data remove storage dabsu:run attribute[{id:"minecraft:armor"}]
execute unless data storage dabsu:run form.attribute."minecraft:armor_toughness" run data remove storage dabsu:run attribute[{id:"minecraft:armor_toughness"}]
execute unless data storage dabsu:run form.attribute."minecraft:attack_damage" run data remove storage dabsu:run attribute[{id:"minecraft:attack_damage"}]
execute unless data storage dabsu:run form.attribute."minecraft:attack_knockback" run data remove storage dabsu:run attribute[{id:"minecraft:attack_knockback"}]
execute unless data storage dabsu:run form.attribute."minecraft:max_health" run data remove storage dabsu:run attribute[{id:"minecraft:max_health"}]
execute unless data storage dabsu:run form.attribute."minecraft:knockback_resistance" run data remove storage dabsu:run attribute[{id:"minecraft:knockback_resistance"}]
execute unless data storage dabsu:run form.attribute."minecraft:movement_speed" run data remove storage dabsu:run attribute[{id:"minecraft:movement_speed"}]

data modify storage dabsu:run run set value {}
data modify storage dabsu:run run.attributes set from storage dabsu:run attribute
execute if data storage dabsu:run run.attributes[{id:"minecraft:max_health"}].base run data modify storage dabsu:run run.Health set value 20f
execute if data storage dabsu:run run.attributes[{id:"minecraft:max_health"}].base store result storage dabsu:run run.Health float 0.01 run data get storage dabsu:run run.attributes[{id:"minecraft:max_health"}].base 100
execute unless data storage dabsu:run run.attributes[{id:"minecraft:max_health"}].base run data modify storage dabsu:run run.Health set value -1.0f

function dabsu:z_private/modify/common/__send_new_att with storage dabsu:run form
function dabsu:z_private/modify/update_self