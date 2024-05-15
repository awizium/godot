  var gridx = int(get_global_mouse_position().x) - 8
	var gridy = int(get_global_mouse_position().y) - 8
	var pos_x = snapped(gridx, 16) - 1
	var pos_y = snapped(gridy, 16) - 1
	grid.position = Vector2(pos_x, pos_y)
