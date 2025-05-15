# Generate a spwner from the entity that you are looking at. Copies almost all entity data except UUID, Pos, Rotation, Brain, HurtTime, and HurtByTimestamp.
# 根据玩家视线中的实体生成刷怪笼。复制几乎所有实体数据，UUID、Pos、Rotation、Brain、HurtTime和HurtByTimestamp除外

tag @s add dabsu.caster
scoreboard players set $ray calc.dabsu 2
execute anchored eyes unless function dabsu:z_private/new/get_looking_entity run function dabsu:z_private/text/tellraw_self {text:{text:"no_entity_raycast",color:"red"}}

tag @s remove dabsu.caster