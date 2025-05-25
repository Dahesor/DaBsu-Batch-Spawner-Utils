data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Modify Selection"}],\
    columns:3,\
    inputs:[\
        {type:"minecraft:single_option",key:"mode",options:[{id:"1",initial:1b,display:{text:"Remove From Selection",color:"#ffb4b4"}},{id:"2",initial:0b,display:{text:"Take Intersection",color:"#dfffb4"}}],label:{text:"Mode"},label_visible:true,width:300},\
        {type:"number_range",key:"range",start:1,end:500,initial:20,label:"Range For \"...Using Range Selection\"",step:1,width:400},\
        {type:"text",key:"pos1",label:"§bCuboid Select Pos 1 §7e.g. §a 18 86 8",initial:"",width:200,label_visible:true,max_length:25},\
        {type:"text",key:"pos2",label:"§bCuboid Select Pos 2 §7e.g. §a 38 -4 -16",initial:"",width:200,label_visible:true,max_length:25},\
    ],\
    actions:[\
        {id:"set_pos1",label:"Set Cuboid Pos 1",tooltip:"Set pos 1 of cuboid selection to your current position",on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1103$(none)"}},\
        {id:"set_pos2",label:"Set Cuboid Pos 2",tooltip:"Set pos 2 of cuboid selection to your current position",on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1104$(none)"}},\
        {id:"fast_cubiod",label:"Fast Cuboid Selection",tooltip:"Pos 1 and Pos 2 will be set to the position of your next 2 right clicks with the wand",on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1102$(none)"}},\
        {id:"rec",label:{text:"...Using Cuboid Selection",color:"#aeffff"},tooltip:"Select all registered spawners within the cuboid bounded by pos 1 and pos 2 in the current dimension. \n§aUnloaded spawners included",on_submit:{type:"command_template",template:"function dabsu:z_private_d/batch/link/mod_select/from_cuboid {form:{pos1:'$(pos1)',pos2:'$(pos2)',index:$(mode)}}"}},\
        {id:"range",label:{text:"...Using Range Selection",color:"#aeffff"},tooltip:"Select all registered spawners within the range difined by the number slidebar.\n§cLoaded spawners only",on_submit:{type:"command_template",template:"function dabsu:z_private_d/batch/link/mod_select/r_$(mode) {r:$(range)}"}},\
        {id:"nbt",label:{text:"...Using nbt= Check",color:"#aeffff"},tooltip:"Select all spawners that has at least one entity passing a §anbt=§r check (like the one in entity selector argument) using the compound tag you input \n§aUnloaded spawners included\n§aWorks Across Dimensions",on_submit:{type:"command_template",template:"trigger trigger.dabsu set 1146$(none)"}},\
        {id:"same_type",label:{text:"...Using Same Potential Selection",color:"#aeffff"},tooltip:"Select all registered spawners that have the same §7SpawnPotentials§r as the spawner §byou are standing on§r. \n§aUnloaded spawners included \n§aWorks Across Dimensions",on_submit:{type:"command_template",template:"trigger trigger.dabsu set 115$(mode)"},width:200},\
    ]\
}
return 1

dialog show @s {type:"minecraft:multi_action_input_form",\
    title:[{text:"§6[DaBsu]§r Select Spawners"}],\
    columns:2,\
    inputs:[\
        {type:"minecraft:single_option",key:"mode",options:[{id:"remove",initial:1b,display:{text:"Remove From Selection",color:"#ffb4b4"}},{id:"intersect",display:{text:"Take InterIntersection",color:"#dfffb4"}}],label:{text:"Mode"},label_visible:true,width:300},\
        {type:"text",key:"pos1",label:"§bRectangle Select Pos 1§7e.g. §a 18 86 8",initial:"",width:400,label_visible:true,max_length:25},\
        {type:"text",key:"pos2",label:"§bRectangle Select Pos 2§7e.g. §a 38 -4 -16",initial:"",width:400,label_visible:true,max_length:25},\
    ],\
    actions:[\
        {id:"set_pos1",label:"Set Rectangle Pos 1",tooltip:"Set pos 1 of rectangle selection to your current position",on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"set_pos2",label:"Set Rectangle Pos 2",tooltip:"Set pos 2 of rectangle selection to your current position",on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"rec",label:"§bSelect Rectangle",tooltip:"Select all registered spawners within the rectangle bounded by pos1 and pos 2",on_submit:{type:"command_template",template:"say -$(this)"}},\
        {id:"edit",label:{translate:"selectServer.edit",color:"green"},on_submit:{type:"command_template",template:"say $(entity)"}},\
        {id:"cancel",label:{translate:"gui.cancel"},on_submit:{type:"command_template",template:"say -$(this)"}},\
    ]\
}

