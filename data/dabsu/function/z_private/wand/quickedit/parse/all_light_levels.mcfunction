function dabsu:z_private_d/uid/get
data modify storage dabsu:run run set from storage dabsu:user data[0].editing
scoreboard players remove #input trigger.dabsu 100000000

scoreboard players operation #bmin calc.dabsu = #input trigger.dabsu
scoreboard players operation #bmin calc.dabsu /= #1000000 calc.dabsu

scoreboard players operation #bmax calc.dabsu = #input trigger.dabsu
scoreboard players operation #bmax calc.dabsu /= #10000 calc.dabsu
scoreboard players operation #bmax calc.dabsu %= #100 calc.dabsu

scoreboard players operation #smin calc.dabsu = #input trigger.dabsu
scoreboard players operation #smin calc.dabsu /= #100 calc.dabsu
scoreboard players operation #smin calc.dabsu %= #10000 calc.dabsu

scoreboard players operation #smax calc.dabsu = #input trigger.dabsu
scoreboard players operation #smax calc.dabsu %= #1000000 calc.dabsu

execute if score #bmin calc.dabsu > #bmax calc.dabsu run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cBlockLightMin > BlockLightMax",\
    "\n - §cBlockLightMin: ",{score:{name:"#bmin",objective:"calc.dabsu"},color:"aqua"},\
    "\n - §cBlockLightMax: ",{score:{name:"#bmax",objective:"calc.dabsu"},color:"aqua"}\
]

execute if score #smin calc.dabsu > #smax calc.dabsu run return run tellraw @s ["",{text:"[DaBsu] Error ->",color:"red"},\
    "\n - §cSkyLightMin > SkyLightMax",\
    "\n - §cSkyLightMin: ",{score:{name:"#smin",objective:"calc.dabsu"},color:"aqua"},\
    "\n - §cSkyLightMax: ",{score:{name:"#smax",objective:"calc.dabsu"},color:"aqua"}\
]