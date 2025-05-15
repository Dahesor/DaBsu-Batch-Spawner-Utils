scoreboard players add #pTypes calc.dabsu 1
data modify storage dabsu:run potential append value {type:-1,Potential:[]}
data modify storage dabsu:run potential[-1].Potential set from storage dabsu:run element
execute store result storage dabsu:run potential[-1].type int 1 run return run scoreboard players get #pTypes calc.dabsu