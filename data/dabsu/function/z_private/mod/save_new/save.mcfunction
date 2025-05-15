execute if entity @s[tag=dabsu.recive_hint.1] run function dabsu:z_private/text/tellraw_self {text:{text:"new_recorded",color:"green"}}
execute at @s run playsound block.note_block.harp master @s ~ ~ ~ 0.5 1.2 0.5
scoreboard players set $recorded calc.dabsu 0
data modify storage dabsu:run in set from entity @s Dimension
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run function dabsu:z_private/placed/initialize_marker