function dabsu:z_private/text/get
function dabsu:z_priq/menu/templates/equipment
data modify storage dabsu:run run set value {type:"item",item:{id:"structure_void"},show_decorations:true,show_tooltip:false,description:["  ",{text:"",italic:true,color:"gray"},"  ",{text:"Copy",underlined:false,color:"dark_gray"},"  ",{text:"Replace",underlined:true,color:"green"}]}

data modify storage dabsu:run dialog.dialog.body[1] set from storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[3] set from storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[5] set from storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[7] set from storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[9] set from storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[11] set from storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[13] set from storage dabsu:run run
data modify storage dabsu:run dialog.dialog.body[15] set from storage dabsu:run run

#Get Element
data modify storage dabsu:run spawner set from block ~ ~ ~
function dabsu:z_priq/menu/gen/__get_ele with storage dabsu:user data[0].editing

data modify storage dabsu:run equipment set value {}
function dabsu:z_priq/menu/gen/equipment

data modify storage dabsu:run dialog.dialog.body[].description[3].text set from storage dabsu:run lang.this.menu_equipment_overview_2
data modify storage dabsu:run dialog.dialog.body[].description[5].text set from storage dabsu:run lang.this.menu_equipment_overview_3



function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog