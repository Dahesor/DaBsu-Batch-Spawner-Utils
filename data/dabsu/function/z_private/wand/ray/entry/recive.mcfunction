data modify storage dabsu:run text set value [{text:"",color:"gray"},\
    {nbt:"id",storage:"dabsu:run",color:"gold"},"\n",\
    {text:"💡",color:"yellow"},"S:"," - "," B:"," - ",\
    {text:"\n❤ ",color:"red"},{nbt:"num.hp",storage:"dabsu:run",color:"green"},\
    {text:" ⛨ ",color:"gold"},{nbt:"element.data.entity.AbsorptionAmount",storage:"dabsu:run",color:"green"},\
    {text:"\n🔰 ",color:"white"},[{nbt:"num.arm_i",storage:"dabsu:run",color:"green"},".",{nbt:"num.arm_f",storage:"dabsu:run",color:"green"}],\
    {text:" 🔰 ",color:"aqua"},[{nbt:"num.amt_i",storage:"dabsu:run",color:"green"},".",{nbt:"num.amt_f",storage:"dabsu:run",color:"green"}],\
    {text:"\n⚔ ",color:"yellow"},[{nbt:"num.dam_i",storage:"dabsu:run",color:"green"},".",{nbt:"num.dam_f",storage:"dabsu:run",color:"green"}],\
    {text:"\n\nWeight: "},{nbt:"element.weight",storage:"dabsu:run",color:"aqua"},\
]
execute as @e[type=creeper,tag=dabsu.displayer] if score @s uid.dabsu = #this uid.dabsu run function dabsu:z_private/wand/ray/att/get_data
function dabsu:z_private/wand/ray/att/get_hp
execute if data storage dabsu:run element.data.custom_spawn_rules run function dabsu:z_private/wand/ray/light/parse
execute if data storage dabsu:run element.data.custom_spawn_rules run data modify storage dabsu:run text[5] set value ["[",{nbt:"element.data.custom_spawn_rules.sky_light_limit[]",storage:"dabsu:run",color:"aqua",separator:{text:",",color:"gray"}},"]"]
execute if data storage dabsu:run element.data.custom_spawn_rules run data modify storage dabsu:run text[7] set value ["[",{nbt:"element.data.custom_spawn_rules.block_light_limit[]",storage:"dabsu:run",color:"aqua",separator:{text:",",color:"gray"}},"]"]