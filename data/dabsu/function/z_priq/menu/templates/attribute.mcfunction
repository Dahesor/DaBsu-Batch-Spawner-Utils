data modify storage dabsu:run dialog.dialog set value {type:"minecraft:multi_action",\
    title:[{text:"[DaBsu] ",color:"gold"},{text:" Base Attributes §eLeave Empty To Use Default Value",color:"white"}],\
    columns: 3,can_close_with_escape:true,after_action:"none",pause:false,\
    inputs:[\
        {type:"text",key:"attack",label:"§bAttack DMG §f| §aKnockback §7e.g. §d7§7, §d2.43§7",max_length:8,initial:'',label_visible:true,width:200},\
        {type:"text",key:"knock",label:"",max_length:8,initial:'',label_visible:false,width:200},\
        {type:"text",key:"health",label:"§bMax Health §7(Also Changes HP)",max_length:8,initial:'',label_visible:true,width:200},\
        {type:"text",key:"speed",label:"§bMomvement Speed",max_length:8,initial:'',label_visible:true,width:200},\
        {type:"text",key:"armor",label:"§bArmor §f| §aArmor Toughness",max_length:8,initial:'',label_visible:true,width:200},\
        {type:"text",key:"tough",label:"",max_length:8,initial:'',label_visible:false,width:200},\
        {type:"text",key:"knock_res",label:"§bKnockback Resistance",max_length:8,initial:'',label_visible:true,width:200},\
    ],\
    actions:[\
        {label:{text:"§aEdit Itself"},action:{type:"dynamic/run_command",template:'function dabsu:z_priq/edit/potential/reciver/attributes {form:{attribute:{"minecraft:armor":"$(armor)","minecraft:armor_toughness":"$(tough)","minecraft:attack_damage":"$(attack)","minecraft:max_health":"$(health)","minecraft:knockback_resistance":"$(knock_res)","minecraft:attack_knockback":"$(knock)","minecraft:movement_speed":"$(speed)"}}}'},width:120},\
        {label:{text:"§eEdit Same Potential"},action:{type:"dynamic/run_command",template:'function dabsu:z_priq/edit/potential/attribute_publish {form:{attribute:{"minecraft:armor":"$(armor)","minecraft:armor_toughness":"$(tough)","minecraft:attack_damage":"$(attack)","minecraft:max_health":"$(health)","minecraft:knockback_resistance":"$(knock_res)","minecraft:attack_knockback":"$(knock)","minecraft:movement_speed":"$(speed)"}}}'},width:140},\
        {label:{translate:"gui.cancel"},width:120,action:{type:"run_command",command:"/trigger trigger.dabsu set 1"}}\
    ],\
}