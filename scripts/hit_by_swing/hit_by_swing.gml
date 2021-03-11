// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hit_by_swing(ang, dist, x1, y1, ang_org, obj){
			var x2 = x1 + lengthdir_x(dist, ang_org - ang)
			var y2 = y1 + lengthdir_y(dist, ang_org - ang)
			var x3 = x1 + lengthdir_x(dist, ang_org + ang)
			var y3 = y1 + lengthdir_y(dist, ang_org + ang)
			var x4 = x1 + lengthdir_x(dist, ang_org)
			var y4 = y1 + lengthdir_y(dist, ang_org)
			var left = obj.bbox_left
			var right = obj.bbox_right
			var top = obj.bbox_top
			var bottom = obj.bbox_bottom
			var wx = (right - left)/2
			var hy = (bottom - top)/2
			var is_hit = point_in_triangle(left,top,x1,y1,x2,y2,x3,y3) || point_in_triangle(left, bottom,x1,y1,x2,y2,x3,y3) || point_in_triangle(right,top,x1,y1,x2,y2,x3,y3) || point_in_triangle(right,bottom,x1,y1,x2,y2,x3,y3) || point_in_triangle(wx,hy,x1,y1,x2,y2,x3,y3)
			is_hit = is_hit || point_in_triangle(left,top,x4,y4,x2,y2,x3,y3) || point_in_triangle(left, bottom,x4,y4,x2,y2,x3,y3) || point_in_triangle(right,top,x4,y4,x2,y2,x3,y3) || point_in_triangle(right,bottom,x4,y4,x2,y2,x3,y3) || point_in_triangle(wx,hy,x4,y4,x2,y2,x3,y3)
			return is_hit
}