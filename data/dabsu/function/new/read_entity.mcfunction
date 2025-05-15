# Generate a spwner from the entity that you are looking at. Only copies a selected frew date like equipment, attributes, absoprtion, etc.
# 根据玩家视线中的实体生成刷怪笼。仅复制一些选定的属性，如装备、属性、伤害吸收等


tag @s add dabsu.caster
scoreboard players set $ray calc.dabsu 1
execute anchored eyes unless function dabsu:z_private/new/get_looking_entity run function dabsu:z_private/text/tellraw_self {text:{text:"no_entity_raycast",color:"red"}}
tag @s remove dabsu.caster