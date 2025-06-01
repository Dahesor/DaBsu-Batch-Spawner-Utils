execute summon block_display run function dabsu:select/cuboid/displayer
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.3 1
execute unless entity @s[tag=dabsu.fast_cuboid.2] run function dabsu:select/pos_1
execute unless entity @s[tag=dabsu.fast_cuboid.2] run return run tag @s add dabsu.fast_cuboid.2

function dabsu:select/pos_2
tag @s remove dabsu.fast_cuboid
tag @s remove dabsu.fast_cuboid.2
execute unless entity @s[tag=dabsu.fast_cuboid.modify] run function dabsu:select/cuboid/set
tag @s remove dabsu.fast_cuboid.modify