# Change armorstand to be invisible and floaty
data merge entity @s {NoGravity:1b,Invisible:1b,Marker:1b}

# Place barrier
execute at @s run setblock ~ ~ ~ minecraft:barrier

# Place barrel
execute at @s run setblock ~ ~1 ~ minecraft:barrel[facing=up]{CustomName:'Quest post'}

# Summon block_display of the base
execute at @s run summon block_display ~-0.5 ~ ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:dark_oak_fence"},transformation:[1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f,0.0f,0.0f,0.0f,0.0f,1.0f]}]}

# Summon block_display of the top
execute at @s run summon block_display ~-0.5 ~1 ~-0.5 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:cartography_table"},transformation:[1.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[1.0,0.0,0.0,0.5,0.0,1.0,0.0,0.5,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[-1.0,0.0,0.0,0.5,0.0,1.0,0.0,0.5,-0.0,0.0,-1.0,1.0,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[0.0,0.0,1.0,0.0,0.0,1.0,0.0,0.5,-1.0,0.0,0.0,0.5,0.0,0.0,0.0,1.0]},{id:"minecraft:item_display",item:{id:"minecraft:flow_banner_pattern",Count:1},item_display:"none",transformation:[-0.0,0.0,-1.0,1.0,0.0,1.0,0.0,0.5,1.0,0.0,-0.0,0.5,0.0,0.0,0.0,1.0]},{id:"minecraft:block_display",block_state:{Name:"minecraft:dark_oak_pressure_plate",Properties:{powered:"false"}},transformation:[1.0,0.0,0.0,0.0,0.0,1.0,0.0,1.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0]}]}

# Kill the armorstand
kill @s
