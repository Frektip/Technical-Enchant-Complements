#Each type of sword have a different attribute, it is better if we detect what kind of sword
# the player is trying to combine in first place

#You only need to change the item id and the item modifier path for each modded item

#IMPORTANT!! follow the format of the item modifier, you can check all
# modded items all at once using a single item modiffier

#The path given is a reference, use it if you want to

#DON'T FORGET TO CHANGE THE ATTRIBUTES VALUE IN ITEM MODIFIERS!!!


##---------------------------------------REFERENCE---------------------------------------##
#execute if entity @s[nbt={Item:{id:"modded:sword_id1"}}] run item modify entity @s container.0 complement:attack_speed/sword1
#execute if entity @s[nbt={Item:{id:"modded:sword_id2"}}] run item modify entity @s container.0 complement:attack_speed/sword2
#execute if entity @s[nbt={Item:{id:"modded:sword_id3"}}] run item modify entity @s container.0 complement:attack_speed/sword3
##---------------------------------------------------------------------------------------##