# Change armorstand to be invisible and floaty
data merge entity @s {NoGravity:1b,Invisible:1b,Marker:1b}

# Place barrier
execute at @s run setblock ~ ~ ~ minecraft:barrier

# Place barrel
execute at @s run setblock ~ ~1 ~ minecraft:barrel[facing=up]{CustomName:'Quest post'}

#Checks if in that position there is a barrel with such custon name, if it does it adds a book on its first slot.
execute if data block ~ ~1 ~ {CustomName:"Quest post"} run data modify block ~ ~1 ~ Items set value [{Slot:0b,id:"minecraft:book",Count:1b}]
execute at @s run setblock ~ ~2 ~ minecraft:air

# Summon block_display of the base
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:dark_oak_fence"},transformation:[1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]}]}

# Summon block_display of the top
execute at @s run summon block_display ~-0.5 ~2 ~-0.5 {Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[1.0,0.0,0.0,0.5,0.0,1.0,0.0,-0.5,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[-1.0,0.0,0.0,0.5,0.0,1.0,0.0,-0.5,-0.0,0.0,-1.0,1.0,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[0.0,0.0,1.0,0.0,0.0,1.0,0.0,-0.5,-1.0,0.0,0.0,0.5,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[-0.0,0.0,-1.0,1.0,0.0,1.0,0.0,-0.5,1.0,0.0,-0.0,0.5,0.0,0.0,0.0,1.0]},{id:"minecraft:block_display",block_state:{Name:"minecraft:dark_oak_pressure_plate",Properties:{powered:"false"}},transformation:[0.0,1.0,0.0,0.0,0.0,1.0,0.0,-1.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0]}]}
execute align zyx positioned ~ ~2 ~ summon block_display run data merge entity @s {block_state:{Name:"minecraft:cartography_table"},transformation:{scale:[1.002f,1.002f,1.002f],translation:[-0.001f,-1.001f,-0.001f]}}

# Kill the armorstand
kill @s
