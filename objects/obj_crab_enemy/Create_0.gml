emerge_timer = 0
active_timer = 0
hit_cooldown = 0
time_stopped = false
state = "dormant"
hp = 5
frozen = false
anim_frame = 0
weapon = pointer_null

w = sprite_get_width(sprite_index)
h = sprite_get_height(sprite_index)
offx = x - sprite_get_xoffset(sprite_index)
offy = y - sprite_get_yoffset(sprite_index)