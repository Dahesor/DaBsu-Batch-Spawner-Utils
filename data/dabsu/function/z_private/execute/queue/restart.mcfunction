function dabsu:z_private/execute/queue/__run_here with storage dabsu:run this.chunk.Objects[0].Pos
data remove storage dabsu:run this.chunk.Objects[0]
scoreboard players add %completed_obj calc.dabsu 1
execute if data storage dabsu:run this.chunk.Objects[0].Pos run function dabsu:z_private/execute/queue/restart