execute if data storage dabsu:run form.attribute
data modify storage dabsu:run run set value {var:""}

#Armor
data modify storage dabsu:run run.var set from storage dabsu:run form.attribute."minecraft:armor"
function dabsu:z_priq/edit/potential/parser/to_double with storage dabsu:run run
data modify storage dabsu:run form.attribute."minecraft:armor" set from storage dabsu:run nbt.d

#Armor Toughness
data modify storage dabsu:run run.var set from storage dabsu:run form.attribute."minecraft:armor_toughness"
function dabsu:z_priq/edit/potential/parser/to_double with storage dabsu:run run
data modify storage dabsu:run form.attribute."minecraft:armor_toughness" set from storage dabsu:run nbt.d

#Attack
data modify storage dabsu:run run.var set from storage dabsu:run form.attribute."minecraft:attack_damage"
function dabsu:z_priq/edit/potential/parser/to_double with storage dabsu:run run
data modify storage dabsu:run form.attribute."minecraft:attack_damage" set from storage dabsu:run nbt.d

#Knockback
data modify storage dabsu:run run.var set from storage dabsu:run form.attribute."minecraft:attack_knockback"
function dabsu:z_priq/edit/potential/parser/to_double with storage dabsu:run run
data modify storage dabsu:run form.attribute."minecraft:attack_knockback" set from storage dabsu:run nbt.d

#Health
data modify storage dabsu:run run.var set from storage dabsu:run form.attribute."minecraft:max_health"
function dabsu:z_priq/edit/potential/parser/to_double with storage dabsu:run run
data modify storage dabsu:run form.attribute."minecraft:max_health" set from storage dabsu:run nbt.d

#Knockback Resistance
data modify storage dabsu:run run.var set from storage dabsu:run form.attribute."minecraft:knockback_resistance"
function dabsu:z_priq/edit/potential/parser/to_double with storage dabsu:run run
data modify storage dabsu:run form.attribute."minecraft:knockback_resistance" set from storage dabsu:run nbt.d

#Speed
data modify storage dabsu:run run.var set from storage dabsu:run form.attribute."minecraft:movement_speed"
function dabsu:z_priq/edit/potential/parser/to_double with storage dabsu:run run
data modify storage dabsu:run form.attribute."minecraft:movement_speed" set from storage dabsu:run nbt.d


execute if data storage dabsu:run form.attribute{"minecraft:armor":"d"} run data remove storage dabsu:run form.attribute."minecraft:armor"
execute if data storage dabsu:run form.attribute{"minecraft:armor_toughness":"d"} run data remove storage dabsu:run form.attribute."minecraft:armor_toughness"
execute if data storage dabsu:run form.attribute{"minecraft:attack_damage":"d"} run data remove storage dabsu:run form.attribute."minecraft:attack_damage"
execute if data storage dabsu:run form.attribute{"minecraft:attack_knockback":"d"} run data remove storage dabsu:run form.attribute."minecraft:attack_knockback"
execute if data storage dabsu:run form.attribute{"minecraft:max_health":"d"} run data remove storage dabsu:run form.attribute."minecraft:max_health"
execute if data storage dabsu:run form.attribute{"minecraft:knockback_resistance":"d"} run data remove storage dabsu:run form.attribute."minecraft:knockback_resistance"
execute if data storage dabsu:run form.attribute{"minecraft:movement_speed":"d"} run data remove storage dabsu:run form.attribute."minecraft:movement_speed"
