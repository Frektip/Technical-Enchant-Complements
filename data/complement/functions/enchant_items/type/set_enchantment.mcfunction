#This function will run if you add another item type to be detected each time you use
# the enchanting table. In this case we're checking for a custom enchantment and for that reason we
# use the tag we defined at "complement:enchant_items/type/item" function

#It is also really important that you add the item id into the Registry storage for each
# enchantment this new item can get at "complement:register", in this case we use "Build.ForItem.item"
# path but "item" needs to be changed to the one you specify at the registry

# "tepcom.custom_id_tag" is just an example
# don't change the function path at the end!
execute if entity @s[tag=tepcom.custom_id_tag] if data storage teplus:loot Build.ForItem.item run function enchantplus:loot/enchanting/set_ench/success