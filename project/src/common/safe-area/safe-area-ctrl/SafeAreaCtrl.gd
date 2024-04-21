extends MarginContainer

var safe_area  = OS.get_window_safe_area()
var window_size = OS.get_real_window_size()

func _ready():
	var unit_x = window_size.x / 9
	var unit_y = window_size.y / 16
	
	if(unit_x <= unit_y):
		var diff_y = (window_size.y - 16 * unit_x) / 2
		var pos_y = max(diff_y, safe_area.position.y)
		add_constant_override("margin_top", pos_y)
		add_constant_override("margin_left", safe_area.position.x)
	else:
		var diff_x = (window_size.x - 9 * unit_y) / 2
		var pos_x = max(diff_x, safe_area.position.x)
		add_constant_override("margin_top", safe_area.position.y)
		add_constant_override("margin_left", pos_x)
