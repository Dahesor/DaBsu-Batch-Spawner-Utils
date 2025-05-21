tag @s add dabsu.displayer
scoreboard players set @s highlight.dabsu 11
scoreboard players operation @s uid.dabsu = #this uid.dabsu
scoreboard players operation @s calc.dabsu = #slot calc.dabsu

data modify entity @s item set from storage dabsu:run item

function dabsu:z_private/wand/ray/item/update_shape