#Check for the custom trident entity id with Waterjet Enchantment

#YOU MUST FOLLOW THIS FORMAT:
# execute as @e[type=[custom trident],distance=1..,nbt={Trident:{id:"[custom trident]",tag:{CustomEnchantments:[{id:"Waterjet"}]}}}] at @s run function enchantplus:result/waterjet/waterjet_ini 

# type=[custom trident] is just an example!

# nbt={Trident:{id:""}} may vary from mod to mod, so be sure you put the correct nbt

# you don't need to change the function path

##------------------------------EXAMPLE-----------------------------#
#execute as @e[type=custom:trident,distance=1..,nbt={Trident:{id:"custom:trident_id",tag:{CustomEnchantments:[{id:"Waterjet"}]}}}] at @s run function enchantplus:result/waterjet/waterjet_ini
##------------------------------------------------------------------#

