created = false
set_up_audio()
theme = theme_level_1
global.puzzle_solution = []
for (var i = 0; i < 9; i ++)
{
	global.puzzle_solution[i] = false	
}


for (var i = 0; i < 4; i ++)
{
	var index = floor(random(9))
	if global.puzzle_solution[index] = true
	{
		i --
	} else {
		global.puzzle_solution[index] = true
	}
}
global.pause = false
player = noone
// Initiate Fonts

randomize()
global.hud_font = font_add_sprite_ext(spr_hud_font, "x0123456789", false, 0)
global.box_font = font_add_sprite_ext(spr_font_longer, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789.,?!'", false, 0)

//set up particle system
global.part_sys_fire = part_system_create()
//basic smoke particle
global.part_smoke = part_type_create()
part_type_direction(global.part_smoke,90,90,0,3)
part_type_sprite(global.part_smoke,spr_smoke_particle,false,false,true)
part_type_gravity(global.part_smoke,0.01,90)
part_type_life(global.part_smoke,30,240)
part_type_size(global.part_smoke,1,1,0.01,0.1)
part_type_alpha1(global.part_smoke,0.2)

//basic flame particle
global.part_fire = part_type_create()
part_type_sprite(global.part_fire,spr_flame_1,true,false,true)
part_type_life(global.part_fire,15,25)
part_type_blend(global.part_fire,true)
part_type_alpha1(global.part_fire,1)

//Barrel debris
global.part_barrel = part_type_create()
part_type_sprite(global.part_barrel,spr_barrel_debris,false,false,true)
part_type_size(global.part_barrel,0.2,0.5,0,0)
part_type_life(global.part_barrel,15,30)
part_type_speed(global.part_barrel,0.5,1,0,0)
part_type_direction(global.part_barrel,30,120,0,0)
part_type_gravity(global.part_barrel,0.1,270)
part_type_orientation(global.part_barrel,0,360,1,2,false)

global.part_dust = part_type_create()
part_type_direction(global.part_dust,90,90,0,3)
part_type_sprite(global.part_dust,spr_smoke_particle,false,false,true)
part_type_gravity(global.part_dust,0.01,90)
part_type_life(global.part_dust,30,120)
part_type_size(global.part_dust,1,1,0.01,0.1)
part_type_alpha1(global.part_dust,0.2)
part_type_color1(global.part_dust,c_orange)

global.part_enemy_boom = part_type_create()

part_type_direction(global.part_enemy_boom,0,360,0,0)
part_type_life(global.part_enemy_boom,15,15)
part_type_speed(global.part_enemy_boom,4,4,0,0)
part_type_sprite(global.part_enemy_boom,spr_enemy_boom_particle,false,false,false)
part_type_orientation(global.part_enemy_boom,0,0,0,0,true)

global.wall_list = []
global.object_list = []
global.room_list = []

//background movement variables
bg_id = noone
var room_count = 0

for (var i = 0; i < 8; i ++)
{
	global.room_list[i] = []
	for (var j = 0; j < 8; j ++)
	{
		global.room_list[i][j] = [false,false,false,false]
	}
}

// set starter and end room
sx = floor(random(8))
sy = 7
ex = floor(random(8))
ey = 0
var xx = sx
var yy = sy
room_xx = sx
room_yy = sy
end_xx = ex
end_yy = ey
room_start_x = (xx * 256) + 128
room_start_y = (yy * 256) + 128
// choose random direction
count = 4
while count > 0
{
dir = floor(random(4))
	while xx != ex or yy != ey 
	{
		var px = xx
		var py = yy
		// determine direction to move
		xx += (dir = 2) - (dir = 0)
		yy += (dir = 3) - (dir = 1)
		// if the room is beyond borders move back
		if xx > 7
		{
			xx = 7
		}
		if yy > 7
		{
			yy = 7
		}
		if xx < 0
		{
			xx = 0
		}
		if yy < 0
		{
			yy = 0
		}
		//if the movement stayed put or a fifty percent chance the direction changes
		if (xx = px and yy = py) or (random(100) < 50)
		{
			dir = floor(random(4))
		}
		 else
		 {
			if xx < ex
			{
				dir = 2
			}
			if xx > ex
			{
				dir = 0
			}
			if yy < ey
			{
				dir = 3
			}
			if yy > ey
			{
				dir = 1
			}
		}
		
		// check movement direction and determine which paths to open
		if !global.room_list[xx][yy][0] and !global.room_list[xx][yy][1] and !global.room_list[xx][yy][2] and !global.room_list[xx][yy][3]
		{
			room_count ++
			show_debug_message(room_count)
		}
		
		
		if xx > px
		{
			global.room_list[px][py][2] = true
			global.room_list[xx][yy][0] = true
		}
		if xx < px
		{
			global.room_list[px][py][0] = true
			global.room_list[xx][yy][2] = true
		}
		if yy > py
		{
			global.room_list[px][py][3] = true
			global.room_list[xx][yy][1] = true
		}
		if yy < py
		{
			global.room_list[px][py][1] = true
			global.room_list[xx][yy][3] = true
		}
	
	}
	var checker = false
	var against = []
	var cn = 0
	do {
		sx = floor(random(8))
		sy = floor(random(8))
		against = global.room_list[sx][sy]
		if against[0] or against[1] or against[2] or against[3]
		{
			checker = true
		}
		cn ++
	} until checker = false or cn > 20
	cn = 0
	checker = false
	do {
		ex = floor(random(8))
		ey = floor(random(8))
		against = global.room_list[ex][ey]
		if against[0] or against[1] or against[2] or against[3]
		{
			checker = true
		}
		cn ++
	} until checker = true or cn > 20
	
	var xx = sx
	var yy = sy
	if count = 1 and room_count < 48
	{
		show_debug_message("Adding counts")
		count ++
	}
	count -= 1
	
}

macrotest = pointer_null
//check map for macro areas
for (i = 2; i < 6; i ++)
{
	for (j = 2; j < 6; j++)
	{
		var closed = false
		if !(global.room_list[i][j][0] || global.room_list[i][j][1] || global.room_list[i][j][2] || global.room_list[i][j][3])
		{
			closed = true	
		}
		if !(global.room_list[i + 1][j][0] || global.room_list[i + 1][j][1] || global.room_list[i + 1][j][2] || global.room_list[i + 1][j][3])
		{
			closed = true	
		}
		if !(global.room_list[i + 1][j + 1][0] || global.room_list[i + 1][j + 1][1] || global.room_list[i + 1][j + 1][2] || global.room_list[i + 1][j + 1][3])
		{
			closed = true	
		}
		if !(global.room_list[i][j + 1][0] || global.room_list[i][j + 1][1] || global.room_list[i][j + 1][2] || global.room_list[i][j + 1][3])
		{
			closed = true	
		}
		if !closed
		{
			macrotest = [i,j]
			
			show_debug_message("It's a macro!")
			
			//turn off exits to expand macro
			global.room_list[i][j][2] = false
			global.room_list[i][j][3] = false
			
			global.room_list[i + 1][j][0] = false
			global.room_list[i + 1][j][3] = false
			
			global.room_list[i][j + 1][2] = false
			global.room_list[i][j + 1][1] = false
			
			global.room_list[i + 1][j + 1][0] = false
			global.room_list[i + 1][j + 1][1] = false
			
			i = 8
			j = 8
			
			
		}
		
	}
	
}



generate_area()

