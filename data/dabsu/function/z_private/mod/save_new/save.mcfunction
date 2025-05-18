execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 0.5 1.2 0.5
scoreboard players set $recorded calc.dabsu 0
data modify storage dabsu:run in set from entity @s Dimension
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function dabsu:z_private/placed/initialize_marker

function dabsu:z_private/text/name/registered