scoreboard players set #Main calc.dabsu 0
execute store result score %total_obj calc.dabsu if data storage dabsu:run Main.targets[].Chunks[].Objects[].sUUID
execute store result score %total_chunks calc.dabsu if data storage dabsu:run Main.targets[].Chunks[].Objects
data modify storage dabsu:run parsing.dimension set from storage dabsu:run Main.targets
data modify storage dabsu:run exe set value {}
data modify storage dabsu:run exe.command set from storage dabsu:run Main.cmd.run
data modify storage dabsu:run exe.args set from storage dabsu:run Main.cmd.args
function dabsu:z_private/execute/custom
data modify storage dabsu:run Main set value {}