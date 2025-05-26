execute unless loaded ~ ~ ~ run return fail
execute if data storage dabsu:run exe.operator run return run function dabsu:z_private/execute/queue/parse_loctions

execute positioned ~ -65536 ~ as @e[type=marker,tag=dabsu.marker,dx=16,dy=131072,dz=16] at @s run function dabsu:z_private/execute/call_markers
scoreboard players add %completed_chunks calc.dabsu 1
return 1