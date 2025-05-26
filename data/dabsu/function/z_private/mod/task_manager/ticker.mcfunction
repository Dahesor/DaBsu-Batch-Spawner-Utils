execute if score $selecting calc.dabsu matches 1 run function dabsu:z_private/mod/buffer_select/ticker
execute if score %modifying calc.dabsu matches 1.. run return run function dabsu:z_private/execute/ticker

execute if score #Main calc.dabsu matches 1 run return run function dabsu:z_private/mod/task_manager/try_main
execute if score #queue calc.dabsu matches 1.. run return run function dabsu:z_private/mod/task_manager/take_que