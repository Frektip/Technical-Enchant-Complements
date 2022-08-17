#YOU MUST FOLLOW THIS FORMAT
# execute if score @s[tag=!splt.raycast] [custom.scoreboard] matches 1.. at @s run function enchantplus:result/splatter/start_raycast

# -You just need to modify the scoreboard name ----> [custom.scoreboard]
# -Do not modify the function path!!
# -Do not modify "splt.raycast" tag!

##------------------------------EXAMPLE-----------------------------#
#execute if score @s[tag=!splt.raycast] Splatter.custom_rod matches 1.. at @s run function enchantplus:result/splatter/start_raycast
##------------------------------------------------------------------#





##Reset the scoreboards, so the player can use it for the next time
#This depends on the number of scoreboards you added

##------------------------------EXAMPLE-----------------------------#
#scoreboard players reset @s[scores={Splatter.custom_rod=1..}] Splatter.custom_rod
##------------------------------------------------------------------#
