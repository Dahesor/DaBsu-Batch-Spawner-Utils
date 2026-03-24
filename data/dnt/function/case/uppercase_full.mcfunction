## Input:
##    storage dnt:ram in
## Output:
##    storage dnt:ram out
## This function turns all letters from the input list into UPPERCASE, including Full width letters, then concat it.

execute unless data storage dnt:ram in run return run function dnt:private/snbt/no_input
scoreboard objectives remove calc.dnt
scoreboard objectives add calc.dnt dummy
scoreboard players set $process calc.dnt 4
return run function dnt:private/split/mod