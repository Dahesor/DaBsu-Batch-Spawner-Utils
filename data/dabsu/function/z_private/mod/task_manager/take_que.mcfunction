execute unless data storage dabsu:run Queue[0].cmd run return run scoreboard players set #queue calc.dabsu 0

execute store result score %total_obj calc.dabsu if data storage dabsu:run Queue[0].targets[].Chunks[].Objects[].sUUID
execute store result score %total_chunks calc.dabsu if data storage dabsu:run Queue[0].targets[].Chunks[].Objects
data modify storage dabsu:run parsing.dimension set from storage dabsu:run Queue[0].targets
data modify storage dabsu:run exe set value {}
data modify storage dabsu:run exe.command set from storage dabsu:run Queue[0].cmd.run
data modify storage dabsu:run exe.args set from storage dabsu:run Queue[0].cmd.args
data modify storage dabsu:run exe.operator set from storage dabsu:run Queue[0].operator
function dabsu:z_private/execute/custom
data remove storage dabsu:run Queue[0]
execute unless data storage dabsu:run Queue[0] run scoreboard players set #queue calc.dabsu 0