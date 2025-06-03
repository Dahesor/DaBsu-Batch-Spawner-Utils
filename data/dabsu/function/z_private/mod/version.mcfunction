execute unless data storage dabsu:sys {init:true} run data modify storage dabsu:run potential set value [{Potential:[],type:0}]
execute unless data storage dabsu:sys {init:true} run scoreboard players set #pTypes calc.dabsu 0

data modify storage dabsu:sys init set value true
data modify storage dabsu:sys version set value 1
data modify storage dabsu:sys VersionName set value "Beta 1.0"
data modify storage dabsu:sys MCVersionRange set value "Minecraft Java 1.20.6 pre-2"
data modify storage dabsu:sys LastReload set value -1L
execute store result storage dabsu:sys LastReload long 1 run time query gametime