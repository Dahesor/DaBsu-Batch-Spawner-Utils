scoreboard players set %using_bossbar calc.dabsu 0
scoreboard players set %completed_obj calc.dabsu 0
scoreboard players set %completed_chunks calc.dabsu 0
scoreboard players set %modifying calc.dabsu 1
scoreboard players set %forceload calc.dabsu 0
scoreboard players set %time_cost calc.dabsu 1
scoreboard players set %force_select calc.dabsu 0
scoreboard players set %last_load calc.dabsu 0
scoreboard players set %has_error calc.dabsu 0
scoreboard players set %failed_obj calc.dabsu 0

scoreboard players operation %allowed_chunks calc.dabsu = run.ChunkReadingRate Option.dabsu
function dabsu:z_private/execute/bossbar
data modify storage dabsu:run xz set value {x:0,z:0}

function dabsu:z_private/execute/next_dimension

data modify storage dabsu:run parsing.buffer set value []
execute if data storage dabsu:run parsing.chunk[0] run function dabsu:z_private/execute/macro/__to_dimension_load with storage dabsu:run this.dimension