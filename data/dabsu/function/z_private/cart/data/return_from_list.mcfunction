execute positioned ~ ~1 ~ run summon item ~ ~ ~ {Item:{id:"barrier",count:1},Tags:["dabsu.inv"],NoGravity:1b,Invulnerable:1b,PickupDelay:0s}
execute positioned ~ ~1 ~ as @e[type=item,tag=dabsu.inv,distance=..1] run function dabsu:z_private/cart/data/__return_from_list
data remove storage dabsu:save list[0]
execute if data storage dabsu:save list[0] run function dabsu:z_private/cart/data/return_from_list