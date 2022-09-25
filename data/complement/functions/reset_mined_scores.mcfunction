#This function is to detect when a player use a certain tool
#This is to make modded tools to be compatible with Mining+, Vein-Miner
# Timber, Auto-Smelt, Chopping and Excavator Enchantments
#Otherwise the game isn't going to recognize those modded tools even though
# you can add those enchantments through the Technical Anvil

#To achieve this you need to add 1 value to a specific fake player score 
#  depening the tool the player used

#--Fake players you can use (but can't change)--#

# teplus.pick = picaxe related tools
# teplus.axe = axe related tools
# teplus.shov = shovel related tools

# You need to follow this format:
# In case for a pickaxe
scoreboard players operation @s teplus.pick += @s[scores={pick.custom.score1=1..}] pick.custom.score1
scoreboard players operation @s teplus.pick += @s[scores={pick.custom.score2=1..}] pick.custom.score2
scoreboard players operation @s teplus.pick += @s[scores={pick.custom.score3=1..}] pick.custom.score3

#-------------------------------------------------------------------#

#After that you MUST reset each scoreboard following this format:
# In case for an axe
scoreboard players reset @s[scores={axe.custom.score1=1..}] axe.custom.score1
scoreboard players reset @s[scores={axe.custom.score2=1..}] axe.custom.score2
scoreboard players reset @s[scores={axe.custom.score3=1..}] axe.custom.score3

# As you can see, you can add more commands depending on how much
# scoreboards you add, you need a different scoreboard for each material
# the tool has (like "pick.custom.score1", "pick.custom.score2", "pick.custom.score3","axe.custom.score1", "axe.custom.score2", etc...)