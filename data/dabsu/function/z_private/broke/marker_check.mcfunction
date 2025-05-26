execute unless loaded ~ ~ ~ run return fail

function dabsu:z_private/mod/blink

execute if entity @s[tag=dabsu.analyzing] run return fail

execute if entity @a[distance=..8] if block ~ ~ ~ spawner run return run function dabsu:z_private/broke/check_change

execute if block ~ ~ ~ spawner run return fail

scoreboard players set #kill uid.dabsu 0
scoreboard players operation #kill uid.dabsu = @s uid.dabsu
execute if score #kill uid.dabsu matches 1.. as @e[type=block_display,tag=dabsu.analyz_marker] if score @s uid.dabsu = #kill uid.dabsu run kill

function dabsu:z_private/broke/unregister_self

function dabsu:z_private/text/tellraw {text:{text:"spawner_broke",color:"gray",extra:[{score:{objective:"calc.dabsu",name:"#x"}}," ",{score:{objective:"calc.dabsu",name:"#y"}}," ",{score:{objective:"calc.dabsu",name:"#z"}}]}}
tellraw @a[distance=..50,tag=dabsu.get_notice] {storage:"dabsu:run",nbt:"text",interpret:true}

execute align xyz summon block_display run function dabsu:z_private/broke/displayer_self
