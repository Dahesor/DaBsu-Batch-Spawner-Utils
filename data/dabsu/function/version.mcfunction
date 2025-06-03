tellraw @s [{text:"DaBsu"},"\n  -  Version: ",{nbt:"VersionName",storage:"dabsu:sys"},"\n  -  Numeric Version: ",{nbt:"version",storage:"dabsu:sys"},"\n  -  For Minecraft: ",{nbt:"MCVersionRange",storage:"dabsu:sys"}]

data modify storage dabsu:sys pong__ set value true
return run data get storage dabsu:sys version