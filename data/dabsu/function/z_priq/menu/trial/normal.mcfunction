execute unless data storage dabsu:run trial.normal_config run return run data modify storage dabsu:run dialog.dialog.body[4].contents set value "§7 Empty"

data modify storage dabsu:run temp2 set value {string:""}
data modify storage dabsu:run temp2.string set string storage dabsu:run trial.normal_config
execute unless data storage dabsu:run temp2{string:""} run return run data modify storage dabsu:run dialog.dialog.body[4].contents set value "§7 Already Using JSON"

data modify storage dabsu:run dialog.dialog.body[4].contents set value {text:"LANG??",underlined:true,color:"green",hover_event:{action:"show_text",value:""},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 170"}}
data modify storage dabsu:run dialog.dialog.body[4].contents.text set value "Export To JSON"
data modify storage dabsu:run dialog.dialog.body[4].contents.hover_event.value set value "Click to generate JSON structure.\n§aYOU MUST CLICK AGAIN\nafter the first click to copy the result."