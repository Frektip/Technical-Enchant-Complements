#Run this function ONLY and ONLY if you add an item that isn't vanilla-like. For example a Paxel
# item. You need register that new item at TE+ main register data storage; that way you will be
# able to enchant that item using the enchantig table but also make sure you edited the files:
# - complement:enchant_items/check_item
# - complement:enchant_items/item_type
# - complement:enchant_items/type/item
# - complement:enchant_items/type/item
# - complement:enchant_items/type/set_curse
# - complement:enchant_items/type/set_enchantment
# otherwise there it is not going to work properly

#--------------TE+ REGISTER STORAGE MAIN INFO--------------#

#The main storage path is  "teplus:register Custom[]" array
#This array is divided in two more arrays "Enchantment[]" and "Curse[]"
#The Enchantment[] array is divided in tree more: Low[] , Average[] and Strong[]

#With that said each array have multiple strings that are the enchantments/curses and each of them
# have a "ForItem:{}" string that contains avery item that can be applyied that enchantment to.

#If you want to add a unique modded item to the ForItem:{} string you need to add it for
# every enchantment/curse that you want it to be compatible using the correct storage path

#-----------------------------------------------------------#

#Let's take the example of the Paxel item, we would want to make it compatible with the
# enchantments and curses from the pickaxe, axe and shovel. In which case do:

# data modify storage teplus:register Custom[].Enchantment[].Average[{id:"AutoSmelt"}].ForItem.paxel set value 1b
# data modify storage teplus:register Custom[].Enchantment[].Average[{id:"Haste"}].ForItem.paxel set value 1b
# data modify storage teplus:register Custom[].Enchantment[].Average[{id:"MiningPlus"}].ForItem.paxel set value 1b
# data modify storage teplus:register Custom[].Enchantment[].Strong[{id:"VeinMiner"}].ForItem.paxel set value 1b
# data modify storage teplus:register Custom[].Enchantment[].Strong[{id:"XpBoost"}].ForItem.paxel set value 1b
# data modify storage teplus:register Custom[].Enchantment[].Average[{id:"Striker"}].ForItem.paxel set value 1b
# data modify storage teplus:register Custom[].Curse[{id:"Fear"}].ForItem.paxel set value 1b
#...

#Just to mention few
# You can get the exact path for every enchantment by checking at TE+ base datapack "enchantplus:set_options/registry" function file.
# The same can be said for Addon enchantments/curses