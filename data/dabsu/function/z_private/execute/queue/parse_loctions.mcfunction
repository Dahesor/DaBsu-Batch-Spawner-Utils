data modify storage dabsu:run this.chunk set from storage dabsu:run this.buffer[0]

execute if data storage dabsu:run exe{work_type:"restart"} run return run function dabsu:z_private/execute/queue/restart

execute if data storage dabsu:run this.chunk.Objects[0] run function dabsu:z_private/execute/queue/loop_location

return 1