execute as @e[type=chest_minecart,tag=dabsu.inv,distance=..6] run function dabsu:z_private/cart/destruct
data merge entity @s {NoGravity:1b,Invulnerable:1b,DisplayState:{Name:"netherite_block"},DisplayOffset:3,CustomName:[{text:"DaBsu"}],CustomNameVisible:0b,Tags:["dabsu.inv"],Items:[]}

scoreboard players set @s calc.dabsu 1
scoreboard players operation @s highlight.dabsu = $gametime calc.dabsu

function dabsu:z_private/cart/data/buttons

execute unless data storage dabsu:save item[{id:1}] run function dabsu:z_private/cart/data/ini
function dabsu:z_private/cart/data/find_start
data modify entity @s Items append from storage dabsu:save item[0].data[]