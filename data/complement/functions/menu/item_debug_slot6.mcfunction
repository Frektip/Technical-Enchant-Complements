#All of the listed items below are all the ones that can be enchanted with the enchanting
# table or combine with the Item

#EnchCore = General tag for these items

#YOU MUST FOLLOW THIS FORMAT:
# execute if data storage teplus:tech_anvil.ui {SectionChange2:{Slot:6b,id:"modded:item_id"}} run data modify storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore set value 1b

# - "modded:tem_id" is just an example!




##Important to run this function at the end: 
# execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore run function [your namespace complement]:menu/item_tag_slot6

execute if data storage teplus:tech_anvil.ui CurrentItems[{Slot:6b}].tag.EnchCore run function complement:menu/item_tag_slot6
