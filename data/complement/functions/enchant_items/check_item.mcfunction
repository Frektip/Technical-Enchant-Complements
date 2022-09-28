#This function is to recognize items that can be enchanted when
#  using the enchanting table (with any enchanting setup)
#You can follow this format

execute if entity @s[nbt={Item:{id:"modded:item.id"}}] run function enchantplus:loot/loot_system/item

#You just need to change the id of the item for the mod
#You DON'T need to change the function call path
