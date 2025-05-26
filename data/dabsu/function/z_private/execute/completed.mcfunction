execute if data storage dabsu:run exe{work_type:"optimize"} run function dabsu:z_private/execute/run/optimize_data
function dabsu:z_private/mod/refactor/reselect/start
scoreboard players set %modifying calc.dabsu 0
scoreboard players set !busy calc.dabsu 0
bossbar remove dabsu:modify


execute if data storage dabsu:run exe.operator run return run function dabsu:z_private/execute/output/find_player_complete with storage dabsu:run exe


function dabsu:z_private/text/tellraw {text:{text:"batch_edit_complete",color:"gray"}}
tellraw @a [{storage:"dabsu:run",nbt:"text",interpret:true},{score:{name:"%time_cost",objective:"calc.dabsu"},color:"yellow"},"t"]
