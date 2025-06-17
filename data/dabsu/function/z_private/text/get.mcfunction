data modify storage dabsu:run lang.this set from storage dabsu:run lang.en
execute if score @s lang.dabsu matches 1 run data modify storage dabsu:run lang.this merge from storage dabsu:run lang.zh_cn

# For other languages
function #dabsu:zapi_lang_get