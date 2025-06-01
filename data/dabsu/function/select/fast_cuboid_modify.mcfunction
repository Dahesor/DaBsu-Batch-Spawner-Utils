dialog clear @s
tag @s add dabsu.fast_cuboid
tag @s add dabsu.fast_cuboid.modify

playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.5 1
function dabsu:z_private/text/tellraw_self {text:{text:"fast_cuboid",color:"green"}}