data modify storage dnt:ram concat merge value {b1:"",b2:"",b3:"",b4:"",c1:"",c2:"",c3:"",c4:"",s1:"",s2:"",s3:"",s4:""}

data modify storage dnt:ram concat.s1 set from storage dnt:ram in[0]
data modify storage dnt:ram concat.s2 set from storage dnt:ram in[2]
data modify storage dnt:ram concat.s3 set from storage dnt:ram in[4]
data modify storage dnt:ram concat.s4 set from storage dnt:ram in[6]
data modify storage dnt:ram concat.c1 set from storage dnt:ram in[1]
data modify storage dnt:ram concat.c2 set from storage dnt:ram in[3]
data modify storage dnt:ram concat.c3 set from storage dnt:ram in[5]
data modify storage dnt:ram concat.c4 set from storage dnt:ram in[7]
execute if data storage dnt:ram in[1] run data modify storage dnt:ram concat.b1 set from storage dnt:ram concat.escape
execute if data storage dnt:ram in[3] run data modify storage dnt:ram concat.b2 set from storage dnt:ram concat.escape
execute if data storage dnt:ram in[5] run data modify storage dnt:ram concat.b3 set from storage dnt:ram concat.escape
execute if data storage dnt:ram in[7] run data modify storage dnt:ram concat.b4 set from storage dnt:ram concat.escape

function dnt:private/concat/conbine/slash with storage dnt:ram concat
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]
data remove storage dnt:ram in[0]

execute if data storage dnt:ram in[0] run function dnt:private/concat/initial_loop