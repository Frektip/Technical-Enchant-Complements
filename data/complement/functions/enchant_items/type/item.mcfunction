#This function is in case you create another item type when enchanting
#There are some things you don't need to touch in here, so follow the
#  steps correctly

##The rest of the process is located in "complement:enchant_items/select_type"

### Debug Message ### (DON'T TOUCH)
execute if score #vanench game.Opts matches 0 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Attempting to enchant the item with Vanilla enchantments","color":"gray","italic":true,"bold":false}]

execute if score #vanench game.Opts matches 1 run tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Fail! ","color":"#24E3F9","italic":true,"bold":false},{"text":"Enchant with vanilla enchantments is disabled, adding enchantment glint","color":"gray","italic":true,"bold":false}]

##========================VANILLA ENCH========================##
#Add normal vanilla enchantments to this item based (DON'T TOUCH)
# on the Enchanting Tier
#-Strong
execute if score #vanench game.Opts matches 0 if score #teplus.rarity teplus.data matches 3 unless data entity @s Item.tag.Enchantments run item modify entity @s container.0 enchantplus:vanilla_strong
#-Average
execute if score #vanench game.Opts matches 0 if score #teplus.rarity teplus.data matches 2 unless data entity @s Item.tag.Enchantments run item modify entity @s container.0 enchantplus:vanilla_average
#-Low
execute if score #vanench game.Opts matches 0 if score #teplus.rarity teplus.data matches 1 unless data entity @s Item.tag.Enchantments run item modify entity @s container.0 enchantplus:vanilla_low
#--------------------------------------------------------------#
#In case "enchant with vanilla" is disabled, add enchantment Glint to it
# (DON'T TOUCH)
execute if score #vanench game.Opts matches 1 run data modify entity @s Item.tag.Enchantments set value [{}]
##============================================================##



##========================TECHNICAL ENCHANT+========================##
#Add tag, this will help selecting from the enchantment list
# "tepcom.custom_id_tag" is just an example
tag @s add tepcom.custom_id_tag

#Set CustomEnchantments[{}] nbt (DON'T TOUCH)
function enchantplus:loot/enchanting/check_type

#Small chance to add a custom Curse
# You can modify the rates of this happening, by default the 
#  command is as it follows:
execute unless data entity @s Item.tag.CustomCurse if predicate enchantplus:random_chance/10 run function enchantplus:loot/enchanting/set_curse/axe

# You can replace the "path" with the ones TE+ provides
# -enchantplus:loot/enchanting/set_curse/axe
# -enchantplus:loot/enchanting/set_curse/armor
# -enchantplus:loot/enchanting/set_curse/tools
# -enchantplus:loot/enchanting/set_curse/weapons

#Set new Lore (DON'T TOUCH)
function #enchantplus:set_lore_item
##==================================================================##

#In case all fails: No Custom Enchantments, Curses and Vanilla enchantaments (DON'T TOUCH)
execute unless data entity @s[predicate=!enchantplus:none_ench] Item.tag.Enchantments[0].id run data remove entity @s Item.tag.Enchantments

#In case all fails: No Custom Enchantments, Curses and Vanilla enchantaments (DON'T TOUCH)
execute unless data entity @s[predicate=!enchantplus:none_ench] Item.tag.Enchantments[0].id run function enchantplus:loot/end/fail

#Summon a new item that will get the data from this item frame (DON'T TOUCH)
summon item ~ ~ ~ {Motion:[0.0,0.32,0.0],PickupDelay:4,Tags:["enchant_sucessful"],Item:{id:"minecraft:stone_button",Count:1b}}

### Debug Message ### (DON'T TOUCH)
tellraw @a[tag=teplus.pydbgm] ["",{"text":"TE+» ","color":"#65DAD4","bold":true},{"text":"(Enchanting★): ","color":"#24E3F9","italic":true,"bold":false},{"text":"Summon a dummy stone button and changing it's nbt","color":"gray","italic":true,"bold":false}]

#Give the stone button thhe new item nbt (DON'T TOUCH)
data modify entity @e[type=item,tag=enchant_sucessful,limit=1,sort=nearest] Item set from entity @s Item

#Kill the item frame (DON'T TOUCH)
kill @s