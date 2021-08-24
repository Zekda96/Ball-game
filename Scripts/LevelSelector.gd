extends Node2D
var Level
var win_cond

# HAS WIN CONDITION

func _ready():
	print('LevelSelector.gd ready')
	Level = int(get_tree().current_scene.name)

func _process(delta):
	# Dev Setting: Restart level
	if Input.is_action_pressed("restart_level"): restart_level()
	
	# Start level win condition settings
	if Level == 1:
		win_cond = (Global.score == Global.max_cascaritas)
		if win_cond: change_level()
			
	elif Level == 2:
		win_cond = false
		if win_cond: change_level()
		
	
	
func change_level():
	Global.score = -1
	Global.cascaritas = -1
	var next_lvl = str(int(get_tree().current_scene.name) + 1)
	print('Next level: ', next_lvl)
	get_tree().change_scene("res://Scenes/Level_" + next_lvl + ".tscn") 
	

func restart_level():
	get_tree().reload_current_scene()
	Global.score = -1
	Global.cascaritas = -1
