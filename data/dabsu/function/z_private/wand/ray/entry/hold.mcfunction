function dabsu:z_private/wand/ray/att/get_hp
tag @s add dabsu.temp

function dabsu:z_private/wand/ray/att/base
data modify storage dabsu:run att merge value {toughness:0.0d}
function dabsu:z_private/wand/ray/att/base_over
execute positioned ~ ~10 ~ run summon creeper ~ ~ ~ {attributes:[{id:"minecraft:armor",base:0d},{id:"attack_damage",base:0d}],Silent:1b,active_effects:[{id:"invisibility",ambient:0b,amplifier:1b,duration:999,show_icon:0b,show_particles:0b}],Tags:["dabsu.temp","dabsu.displayer"],equipment:{}}
execute positioned ~ ~10 ~ as @e[type=creeper,tag=dabsu.displayer,tag=dabsu.temp,distance=..1] at @s run function dabsu:z_private/wand/ray/att/exam


data modify storage dabsu:run text set value [{text:"",color:"gray"},\
    {nbt:"temp3",storage:"dabsu:run",interpret:true},"\n",\
    {text:"💡",color:"yellow"},"S:"," - "," B:"," - ",\
    {text:"\n❤ ",color:"red"},{nbt:"num.hp",storage:"dabsu:run",color:"green"},\
    {text:" ⛨ ",color:"gold"},{nbt:"element.data.entity.AbsorptionAmount",storage:"dabsu:run",color:"green"},\
    {text:"\n🔰 ",color:"white"}," - ",\
    {text:" 🔰 ",color:"aqua"}," - ",\
    {text:"\n⚔ ",color:"yellow"}," - ",\
    {text:"\n\nWeight: "},{nbt:"element.weight",storage:"dabsu:run",color:"aqua"},\
]

execute if data storage dabsu:run element.data.custom_spawn_rules run function dabsu:z_private/wand/ray/light/parse
execute if data storage dabsu:run element.data.custom_spawn_rules run data modify storage dabsu:run text[5] set value ["[",{nbt:"element.data.custom_spawn_rules.sky_light_limit[]",storage:"dabsu:run",color:"aqua",separator:{text:",",color:"gray"}},"]"]
execute if data storage dabsu:run element.data.custom_spawn_rules run data modify storage dabsu:run text[7] set value ["[",{nbt:"element.data.custom_spawn_rules.block_light_limit[]",storage:"dabsu:run",color:"aqua",separator:{text:",",color:"gray"}},"]"]
function dabsu:z_private/wand/ray/item/update