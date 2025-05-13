tag @s add dabsu.caster
scoreboard players set $ray calc.dabsu 2
execute anchored eyes unless function dabsu:z_private/new/get_looking_entity run function dabsu:z_private/text/tellraw {text:{text:"no_entity_raycast",color:"red"}}
tag @s remove dabsu.caster