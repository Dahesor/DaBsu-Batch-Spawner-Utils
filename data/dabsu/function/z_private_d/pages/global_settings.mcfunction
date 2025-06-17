function dabsu:z_private/text/get
function dabsu:z_private_d/templates/settings/global

data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:[{text:"Use Action Bar: ",extra:["§a§nTrue"],hover_event:{action:"show_text",value:"Turn it off so that DaBsu will never \noccupy the action bar"},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1401"}},"       "],width: 400}
data modify storage dabsu:run dialog.dialog.body[-1].contents append value {text:"Use Subtitle: ",extra:["§a§nTrue"],hover_event:{action:"show_text",value:"Turn it off so that DaBsu will never \noccupy the subtitle"},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1402"}}
execute if score disableActionbar Option.dabsu matches -1 run data modify storage dabsu:run dialog.dialog.body[-1].contents[0] merge value {extra:["§c§nFalse"]}
execute if score disableSubtitle Option.dabsu matches -1 run data modify storage dabsu:run dialog.dialog.body[-1].contents[2] merge value {extra:["§c§nFalse"]}


data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Spawner Active Range: ",extra:[{text:"50",color:"yellow",underlined:true,hover_event:{action:"show_text",value:""}}],hover_event:{action:"show_text",value:"..."},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1403"}},width: 400}

execute if score MarkerActiveRange Option.dabsu matches 1 run data modify storage dabsu:run dialog.dialog.body[-1].contents.extra[0].text set value "80"
execute if score MarkerActiveRange Option.dabsu matches 2 run data modify storage dabsu:run dialog.dialog.body[-1].contents.extra[0].text set value "120"
execute if score MarkerActiveRange Option.dabsu matches -2 run data modify storage dabsu:run dialog.dialog.body[-1].contents.extra[0].text set value "§oGlobal"
execute if score MarkerActiveRange Option.dabsu matches -1 run data modify storage dabsu:run dialog.dialog.body[-1].contents.extra[0].text set value "30"

data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"cname: ",extra:[{text:"true",color:"green",underlined:true,hover_event:{action:"show_text",value:""}}],hover_event:{action:"show_text",value:"..."},click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1404"}},width: 400}
execute if score disableCustomname Option.dabsu matches -1 run data modify storage dabsu:run dialog.dialog.body[-1].contents.extra[0].text set value "§c§nFalse"


data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Spawner Select Rate (Spawners/tick): ",extra:[{text:"-250",color:"red",underlined:true,click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1410"},hover_event:{action:"show_text",value:""}},"  ",{text:"2000",color:"aqua"},"  ",{text:"+250",color:"green",underlined:true,click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1411"},hover_event:{action:"show_text",value:""}}],hover_event:{action:"show_text",value:"The max rate that DaBsu can select spawners. \nThe default value §7(2000 spawners/tick)§r \nis enough to handle most quests within a tick"}},width: 400}
data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:{text:"Chunk Load Rate (Chunks/tick): ",extra:[{text:"-1",color:"red",underlined:true,click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1412"},hover_event:{action:"show_text",value:""}},"  ",{text:"10",color:"aqua"},"  ",{text:"+1",color:"green",underlined:true,click_event:{action:"run_command",command:"/trigger trigger.dabsu set 1413"},hover_event:{action:"show_text",value:""}}],hover_event:{action:"show_text",value:"The max rate that DaBsu can load chunks. \nA smaller value is less performance costly, \nbut takes longer to complete a task."}},width: 400}


data modify storage dabsu:run temp set value {select:2000,read:10}
execute store result storage dabsu:run temp.select int 1 run scoreboard players get run.SelectionRate Option.dabsu
execute store result storage dabsu:run temp.read int 1 run scoreboard players get run.ChunkReadingRate Option.dabsu
function dabsu:z_private_d/pages/gen/__fill_global_settings with storage dabsu:run temp


##Lang
    data modify storage dabsu:run dialog.dialog.body[2].contents[0].text set from storage dabsu:run lang.this.goption_actionbar
    data modify storage dabsu:run dialog.dialog.body[2].contents[0].hover_event.value set from storage dabsu:run lang.this.goption_actionbar_tip
    data modify storage dabsu:run dialog.dialog.body[2].contents[2].text set from storage dabsu:run lang.this.goption_subtitle
    data modify storage dabsu:run dialog.dialog.body[2].contents[2].hover_event.value set from storage dabsu:run lang.this.goption_subtitle_tip
    data modify storage dabsu:run dialog.dialog.body[3].contents.text set from storage dabsu:run lang.this.goption_range
    data modify storage dabsu:run dialog.dialog.body[3].contents.hover_event.value set from storage dabsu:run lang.this.goption_range_tip
    data modify storage dabsu:run dialog.dialog.body[4].contents.text set from storage dabsu:run lang.this.goption_cname
    data modify storage dabsu:run dialog.dialog.body[4].contents.hover_event.value set from storage dabsu:run lang.this.goption_cname_tip
    data modify storage dabsu:run dialog.dialog.body[5].contents.text set from storage dabsu:run lang.this.goption_select
    data modify storage dabsu:run dialog.dialog.body[5].contents.hover_event.value set from storage dabsu:run lang.this.goption_select_tip
    data modify storage dabsu:run dialog.dialog.body[6].contents.text set from storage dabsu:run lang.this.goption_load
    data modify storage dabsu:run dialog.dialog.body[6].contents.hover_event.value set from storage dabsu:run lang.this.goption_load_tip

data modify storage dabsu:run dialog.dialog.body append value {type:"plain_message",contents:["       "]}
function dabsu:z_private_d/pages/show_any with storage dabsu:run dialog