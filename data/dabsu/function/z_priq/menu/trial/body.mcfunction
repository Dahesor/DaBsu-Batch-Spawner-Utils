function dabsu:z_private/text/get
data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:"§bTRIAL_SPAWNER_CONFIG§r Converter",color:"white"}],\
    can_close_with_escape:true,after_action:"none",pause:false,\
    action:{label:{translate:"gui.ok"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    body:[{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:{text:"",click_event:{action:"open_url",url:"https://minecraft.wiki/w/Trial_spawner_configuration"},hover_event:{action:"show_text",value:"Wiki"}},width:400},{type:"plain_message",contents:{text:"",click_event:{action:"open_url",url:"https://github.com/Dahesor/DNT-Dahesor-NBT-Transformer"}},width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:""}]\
}

data modify storage dabsu:run dialog.dialog.title[1].text set from storage dabsu:run lang.this.trial_coverter_title

data modify storage dabsu:run dialog.dialog.body[0].contents set from storage dabsu:run lang.this.trial_body_0
data modify storage dabsu:run dialog.dialog.body[1].contents.text set from storage dabsu:run lang.this.trial_body_1
data modify storage dabsu:run dialog.dialog.body[1].contents.click_event.url set from storage dabsu:run lang.this.trial_wiki

data modify storage dabsu:run dialog.dialog.body[2].contents.text set from storage dabsu:run lang.this.trial_body_2

data modify storage dabsu:run dialog.dialog.body[3].contents set from storage dabsu:run lang.this.trial_body_3

data modify storage dabsu:run dialog.dialog.body[5].contents set from storage dabsu:run lang.this.trial_body_5