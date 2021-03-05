instance_create_depth(x-8,y-8,5,obj_wall_generic)
touched = false


item_array = [obj_heart_buy, obj_small_heart_buy, obj_arrow_buy]

count = 0
var len = array_length(item_array)

//shuffle the array
while count != 30
{
		count ++
		rando_1 = floor(random(len))
		rando_2 = floor(random(len))
		
		store_1 = item_array[rando_1]
		store_2 = item_array[rando_2]
		
		item_array[rando_2] = store_1
		item_array[rando_1] = store_2
}

for( var i = 0; i < 3; i++)
{
	var item = item_array[i]
	instance_create_depth(x - 32 + 32 * i, y + 32, 5, item)
}