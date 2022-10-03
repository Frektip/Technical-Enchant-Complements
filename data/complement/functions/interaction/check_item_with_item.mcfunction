#This function is to allow the Technical Anvil to combine items from the
# same type (GROUP)
# In case you create a new "group" at: item_tag or item_tag_slot6 files
# you need to follow this format:

# execute if data storage teplus:tech_anvil.ui {CurrentItems:[{Slot:6b,tag:{Teplus:{item_type:"GROUP"}}}]} if data storage teplus:tech_anvil.ui {ResultItem:{tag:{Teplus:{item_type:"GROUP"}}}} run function complement:interaction/item_type/item

# Note that you must change:
# - "GRUOP" from the item_type nbt to match with yours
# - the function path according to your complement
