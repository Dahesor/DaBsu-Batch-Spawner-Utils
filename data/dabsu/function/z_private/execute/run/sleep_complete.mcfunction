data remove storage dabsu:run Dimensions[].Chunks[].Objects[].sUUID
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].UUID
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].type
data remove storage dabsu:run Dimensions[].Chunks[].Objects[].mark
scoreboard players set !busy calc.dabsu 0
scoreboard players set %modifying calc.dabsu 0
say Sleep Completed
bossbar remove dabsu:modify
function dabsu:z_private/mod/hibernate/uninstall