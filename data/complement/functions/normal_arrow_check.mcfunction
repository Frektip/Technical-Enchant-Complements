#This function is to prevent a bug when using a modded bow/crossbow
# in the offhand and having the same bow/crossbow without custom enchantments
# in the mainhand. (is confussing ik)

#Basically you need to check if the player a normal modded bow/crossbow in
# their mainhand using a predicate to store a value, using this format:

# execute store success score #nmlhand teplus.data if predicate complement:normal_bowcross

# - Remember to change it to your namespace and follow the 
#    format in the .json file
# - Don't change "execute store success score #nmlhand teplus.data if predicate"
#   just change the predicate path and it's contents
