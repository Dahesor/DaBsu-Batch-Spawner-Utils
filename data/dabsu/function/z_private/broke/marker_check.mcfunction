execute unless loaded ~ ~ ~ run return fail

execute if score @s selected.dabsu matches 1.. run function dabsu:z_private/mod/blink
execute if entity @a[distance=..8] if block ~ ~ ~ spawner run return run function dabsu:z_private/broke/check_change


execute if block ~ ~ ~ spawner run return fail

execute store result score #cx calc.dabsu run data get entity @s data.chunk.x
execute store result score #cz calc.dabsu run data get entity @s data.chunk.z

data modify storage dabsu:run data set from entity @s data

function dabsu:z_private/mod/get_chunk/main
function gu:generate
function dabsu:z_private/mod/del_save with storage gu:main

function dabsu:z_private/mod/coords
function dabsu:z_private/text/tellraw {text:{text:"spawner_broke",color:"gray",extra:[{score:{objective:"calc.dabsu",name:"#x"}}," ",{score:{objective:"calc.dabsu",name:"#y"}}," ",{score:{objective:"calc.dabsu",name:"#z"}}]}}
tellraw @a[distance=..50,tag=dabsu.get_notice] {storage:"dabsu:run",nbt:"text",interpret:true}

execute align xyz summon block_display run function dabsu:z_private/broke/displayer_self


kill @s