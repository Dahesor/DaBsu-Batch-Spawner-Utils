execute if score $process calc.dnt matches 1 if data storage dnt:ram {char:"\n"} run return 1
execute if score $process calc.dnt matches 2 run return run function dnt:private/remove_char/enter
execute if score $process calc.dnt matches 3..4 run return run function dnt:private/case/upper
execute if score $process calc.dnt matches 5..6 run return run function dnt:private/case/lower
return fail