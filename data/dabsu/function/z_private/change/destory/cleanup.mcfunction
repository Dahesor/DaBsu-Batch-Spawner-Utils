scoreboard players set #kill uid.dabsu 0
scoreboard players operation #kill uid.dabsu = @s uid.dabsu
execute if score #kill uid.dabsu matches 1.. as @e[type=block_display,tag=dabsu.analyz_marker] if score @s uid.dabsu = #kill uid.dabsu run kill

function dabsu:z_private/change/unregister_self

execute align xyz summon block_display run function dabsu:z_private/change/visual/destroy