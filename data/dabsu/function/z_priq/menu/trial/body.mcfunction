function dabsu:z_private/text/get
data modify storage dabsu:run dialog.dialog set value {type:"minecraft:notice",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:"§bTRIAL_SPAWNER_CONFIG§r Converter",color:"white"}],\
    can_close_with_escape:true,after_action:"none",pause:false,\
    action:{label:{translate:"gui.ok"},action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}},\
    body:[{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:{text:"",click_event:{action:"open_url",url:"https://minecraft.wiki/w/Trial_spawner_configuration"},hover_event:{action:"show_text",value:"Wiki"}},width:400},{type:"plain_message",contents:{text:"",click_event:{action:"open_url",url:"https://github.com/Dahesor/DNT-Dahesor-NBT-Transformer"}},width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:"",width:400},{type:"plain_message",contents:""}]\
}

data modify storage dabsu:run dialog.dialog.body[0].contents set value "§7DaBsu does not support the quick or batch editing of trial spawners"
data modify storage dabsu:run dialog.dialog.body[1].contents.text set value "Unless you have a really good reason,\n you should be using a §b§nTrial Spawner Config File§r in Datapack,\nwhich can easily manage spawn potentials of multiple trial spawners"

data modify storage dabsu:run dialog.dialog.body[2].contents.text set value "Thanks to the §6§nDNT§r library, this page can export the current\ntrial spawner inline configuration into an equivalent JSON structure\nthat you can directly copy to a JSON config file in your data pack."

data modify storage dabsu:run dialog.dialog.body[3].contents set value "§d§l Normal Config"

data modify storage dabsu:run dialog.dialog.body[5].contents set value "§d§l Ominous Config"