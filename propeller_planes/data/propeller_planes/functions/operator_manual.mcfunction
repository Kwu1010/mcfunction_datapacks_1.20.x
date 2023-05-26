scoreboard objectives add manual-plane trigger
scoreboard players enable @a manual-plane

tellraw @a[scores={manual-plane=1..1}] {"text":"[Propeller Plane Operator Manual - Page 1 of 3]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=1..1}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Disclaimers & Warnings","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Top Speed     - 40 BPS","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Landing Speed - Throttle <= 26%","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Flight Speed  - Throttle >= 26%","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Detonates if landing in flight speed, impact, plane collision, 0 HP.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"Spawn egg does NOT drop if detonated.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=1..1}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=2..2}] {"text":"[Propeller Plane Operator Manual - Page 2 of 3]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=2..2}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Flight Controls","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Hold hotbar slot 1 to decrease throttle.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Hold hotbar slot 3 to increase throttle.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Hold hotbar slot 2 or 4-9 to maintain throttle.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Mouse-controlled pitch & yaw.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"Pitch is disabled until flight speed is reached.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=2..2}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=3..3}] {"text":"[Propeller Plane Operator Manual - Page 3 of 3]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Despawning & Config","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Open up seat inventory by pressing E on plane or shift right click.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Click on 'Click To Despawn' saddle to despawn.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Equip leather horse armor on the plane seat to change exterior.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"Leather horse armor is not consumed.","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=3..3}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

tellraw @a[scores={manual-plane=4..}] {"text":"[Propeller Plane Operator Manual - Page - of 3]","color":"gold","bold":"true"}
tellraw @a[scores={manual-plane=4..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"Use '/trigger manual-plane set #' to access the manual pages [1-3].","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"Page 1 - Disclaimers & Warnings","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"Page 2 - Flight Controls","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"Page 3 - Despawning & Config","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"","color":"gold","bold":"false"}
tellraw @a[scores={manual-plane=4..}] {"text":"EPILEPSY WARNING: FLASHING OBJECTS MAY TRIGGER SEIZURES DURING FLIGHT.","color":"red","bold":"true","italic":"false"}

scoreboard players set @a manual-plane 0