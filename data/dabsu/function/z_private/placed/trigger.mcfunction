advancement revoke @s only dabsu:place_spawner

scoreboard players set $recorded calc.dabsu 0

data modify storage dabsu:run in set from entity @s Dimension

execute at @s anchored eyes if function dabsu:z_private/mod/raycast/place_block run return 1
execute at @s anchored eyes if function dabsu:z_private/mod/raycast/find_block run return 2

function dabsu:z_private/text/tellraw {text:{text:"spawner_missed",color:"red"}}
tellraw @s {storage:"dabsu:run",nbt:"text",interpret:true}
return fail