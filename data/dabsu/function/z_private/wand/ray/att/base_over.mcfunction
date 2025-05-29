execute unless data storage dabsu:run element.data.entity.attributes run return fail
data modify storage dabsu:run attribute set from storage dabsu:run element.data.entity.attributes

execute if data storage dabsu:run attribute[{id:"armor"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"armor"}
execute if data storage dabsu:run attribute[{id:"armor_toughness"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"armor_toughness"}
execute if data storage dabsu:run attribute[{id:"attack_damage"}] run function dabsu:z_private/modify/common/att/__repair_default_namespace {id:"attack_damage"}

execute if data storage dabsu:run attribute[{id:"minecraft:armor"}].base run data modify storage dabsu:run att.armor set from storage dabsu:run attribute[{id:"minecraft:armor"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:armor_toughness"}].base run data modify storage dabsu:run att.toughness set from storage dabsu:run attribute[{id:"minecraft:armor_toughness"}].base
execute if data storage dabsu:run attribute[{id:"minecraft:attack_damage"}].base run data modify storage dabsu:run att.damage set from storage dabsu:run attribute[{id:"minecraft:attack_damage"}].base