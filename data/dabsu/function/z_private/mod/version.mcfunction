execute unless data storage dabsu:sys {init:true} run data modify storage dabsu:run potential set value [{Potential:[],type:0}]
execute unless data storage dabsu:sys {init:true} run scoreboard players set #pTypes calc.dabsu 0

data modify storage dabsu:sys init set value true
data modify storage dabsu:sys version set value 5
data modify storage dabsu:sys VersionName set value "1.0.5"
data modify storage dabsu:sys MCVersionRange set value "Minecraft Java 1.21.6 ~ 1.21.8"
data modify storage dabsu:sys LastReload set value -1L
execute store result storage dabsu:sys LastReload long 1 run time query gametime