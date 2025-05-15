scoreboard players set $selecting calc.dabsu 0
bossbar remove dabsu:select
execute as @a run function dabsu:z_private/text/tellraw_self {text:{text:"selection_complete",color:"green"}}
