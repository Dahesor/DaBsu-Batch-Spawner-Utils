data modify storage dabsu:run temp3 set value "Hold Right Button"
execute if score @s lang.dabsu matches 1 run data modify storage dabsu:run temp3 set value "按住右键"

execute if score #hover calc.dabsu matches 1 run title @s actionbar ["← ",{text:"Spawn Range",color:"green"}," (",{nbt:"temp3",storage:"dabsu:run"},") →"]
execute if score #hover calc.dabsu matches 2 run title @s actionbar ["← ",{text:"Active Range",color:"aqua"}," (",{nbt:"temp3",storage:"dabsu:run"},") →"]
execute if score #hover calc.dabsu matches 3 run title @s actionbar ["↑ ",{text:"Spawn Count",color:"yellow"}," (",{nbt:"temp3",storage:"dabsu:run"},") ↓"]