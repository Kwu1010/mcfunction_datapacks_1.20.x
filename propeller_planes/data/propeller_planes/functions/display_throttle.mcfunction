####################################################################################################
# 
# Display Current Throttle To Pilots
# 
####################################################################################################

# Set Temporary Variable Range
scoreboard players set max vehicle_speed 3

# Calculate Throttle Percentage
execute as @a[tag=pilot] at @s run scoreboard players operation @s throttle_percent = @s vehicle_speed
execute as @a[tag=pilot] at @s run scoreboard players operation @s throttle_percent /= max vehicle_speed

# Display Throttle Percent On Pilot Actionbar
execute as @a[tag=pilot,scores={vehicle_speed=..4}] at @s run title @s actionbar ["",{"text":"Use '/trigger manual-plane set #' to open the operator manual, where # is the a page number.","color":"gold","bold":"false"}]
execute as @a[tag=pilot,scores={vehicle_speed=5..79}] at @s run title @s actionbar ["",{"text":"Throttle: ","color":"gold"},{"score":{"name":"@s","objective":"throttle_percent"}},{"text":"% | "},{"text":"Landing Speed","color":"gold","bold":"true"}]
execute as @a[tag=pilot,scores={vehicle_speed=80..}] at @s run title @s actionbar ["",{"text":"Throttle: ","color":"green"},{"score":{"name":"@s","objective":"throttle_percent"}},{"text":"%"}]