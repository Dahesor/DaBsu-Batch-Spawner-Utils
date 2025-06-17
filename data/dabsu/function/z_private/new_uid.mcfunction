scoreboard players add #UID uid.dabsu 1
scoreboard players operation @s uid.dabsu = #UID uid.dabsu
execute unless score @s lang.dabsu matches 0.. run scoreboard players operation @s lang.dabsu = $default lang.dabsu
# Welcome to DABSU!

function dabsu:z_private/text/get
data modify storage dabsu:run text set value ["",{text:"",color:"green",bold:true},{selector:"@s",color:"yellow"},"§e§l! ",{text:""},"\n - ",{text:"",underlined:true,color:"aqua"},"   ",{translate:"options.language",underlined:true,color:"aqua",click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1320"}}]

data modify storage dabsu:run text[1].text set from storage dabsu:run lang.this.promot
data modify storage dabsu:run text[4].text set from storage dabsu:run lang.this.current_lang
#data modify storage dabsu:run text[6].text set from storage dabsu:run lang.this.help

tellraw @s {storage:"dabsu:run",nbt:"text",interpret:true}