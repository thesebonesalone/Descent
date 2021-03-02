hit_cooldown = 0
state = "dormant"
hp = hp_max
hsp = 0
vsp = 0
stasis_timer = 0

frozen = false
time_stopped = false

wind_up_timer = 0


anim_timer = 0
anim_frame = 0

dormant_sprite = spr_enemy_generic
active_sprite = spr_enemy_generic
wind_up_sprite = spr_enemy_generic
attack_sprite = spr_enemy_generic

dormant_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]
active_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]
attack_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]
wind_up_attach = [[5,11,45],[3,11,135],[10,11,135],[12,11,45]]





attack_x = x
attack_y = y

start_x = x
start_y = y

//look direction
dir = 0
swing_timer = 0


//radius information for fire
w = sprite_get_width(sprite_index)
h = sprite_get_height(sprite_index)
offx = x - sprite_get_xoffset(sprite_index)
offy = y - sprite_get_yoffset(sprite_index)

weapon = pointer_null