say done!
scoreboard players set %modifying calc.dabsu 0
bossbar remove dabsu:modify

function dabsu:z_private/text/tellraw {text:{text:"batch_edit_complete",color:"gray"}}
tellraw @a [{storage:"dabsu:run",nbt:"text",interpret:true},{score:{name:"%time_cost",objective:"calc.dabsu"},color:"yellow"},"t"]
