extends Node2D

func _ready():
	
	update()

func _draw():
	
	# polygon vertices
	
	var polygon_vertices_1 = [Vector2(50,200), Vector2(200,200), Vector2(100,100)]
	var polygon_vertices_2 = [Vector2(200,200), Vector2(400,400), Vector2(100,400)]
	var rectangle = Rect2(Vector2(20,20),Vector2(40,40))
	
	# colors
	
	var fill_color_1 = ColorN("red")
	var fill_color_2 = [ColorN("blue")]
	var fill_color_3 = ColorN("green")
	var line_color = ColorN("white")
	
	
	# draw polygons, filled
	
	draw_colored_polygon(polygon_vertices_1, fill_color_1)	
	draw_polygon(polygon_vertices_2,fill_color_2)
	draw_circle(Vector2(400,400),50.0,fill_color_3)
	draw_rect(rectangle, fill_color_3)
	
	# draw polygon_1 using lines, unfilled
	
	for index in polygon_vertices_1.size()-1:
		draw_line(polygon_vertices_1[index],polygon_vertices_1[index+1],line_color)
	draw_line(polygon_vertices_1[polygon_vertices_1.size()-1], polygon_vertices_1[0], line_color)