$data modify storage dabsu:run element set from block ~ ~ ~ SpawnPotentials[$(index)]
data modify storage dabsu:run attribute set from storage dabsu:run element.data.entity.attributes
execute unless data storage dabsu:run element.data.entity.attributes run data modify storage dabsu:run attribute set value []