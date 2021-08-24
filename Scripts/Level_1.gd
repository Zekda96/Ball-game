extends Node2D
# Contains pause and unpause routine


func _ready():
	print('Level_1.gd ready')



func _on_pause_button_pressed():
	get_tree().paused = true
	$UI/pause_popup.show()
	
func _on_unpause_button_pressed():
	get_tree().paused = false
	$UI/pause_popup.hide()


func _on_restart_level_pressed():
	get_tree().reload_current_scene()
