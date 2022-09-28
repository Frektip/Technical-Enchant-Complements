#This function is to enchant the items according to their type
# You can use TE+ provided functions in case you wan't the item to get
# all of the enchantments available and compatible for that item.
#Example: using "function enchantplus:loot/loot_system/ench_item/helmet" 
#  will make that item get every custom enchantment and curse for the helmet ONLY

##HERE is the list of the functions paths:
# - enchantplus:loot/loot_system/ench_item/helmet
# - enchantplus:loot/loot_system/ench_item/chestplate
# - enchantplus:loot/loot_system/ench_item/leggings
# - enchantplus:loot/loot_system/ench_item/boots
# - enchantplus:loot/loot_system/ench_item/sword
# - enchantplus:loot/loot_system/ench_item/axe
# - enchantplus:loot/loot_system/ench_item/pickaxe
# - enchantplus:loot/loot_system/ench_item/shovel
# - enchantplus:loot/loot_system/ench_item/hoe
# - enchantplus:loot/loot_system/ench_item/trident
# - enchantplus:loot/loot_system/ench_item/shield
# - enchantplus:loot/loot_system/ench_item/bow
# - enchantplus:loot/loot_system/ench_item/crossbow

#You can use this command format:
execute if entity @s[nbt={Item:{id:"modded:item.id"}}] run function path

# Change "path" with the ones listed above
##-----------------------------------------------------------------------------------------------##
#In case you want to add more items with a different type, you need to
# create a whole new type for it with your own path in your complement
#You can follow this format:
execute if entity @s[nbt={Item:{id:"modded:item.id"}}] run function complement:enchant_items/type/item

#Remember to change the item .id and your function path to your workspace