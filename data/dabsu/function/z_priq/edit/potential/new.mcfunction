dialog clear @s
data modify storage dabsu:run form set from storage dabsu:user data[0].form

execute unless data storage dabsu:run form.data.entity.id run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cMissing Entity id",\
]

#loot_table
execute unless data storage dabsu:run form.data.equipment.loot_table run data remove storage dabsu:run form.data.equipment

#light
execute unless data storage dabsu:run form{use_light:1} run data remove storage dabsu:run form.data.custom_spawn_rules

#entity
data modify storage dabsu:run form.data.entity set from storage dabsu:run form.entity
data remove storage dabsu:run form.entity

#Edit
data modify storage dabsu:run form.form set from storage dabsu:run form
execute as @e[type=marker,distance=..0.2,limit=1,tag=dabsu.marker] run function dabsu:z_private/modify/element/append with storage dabsu:run form