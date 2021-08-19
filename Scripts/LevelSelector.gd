extends Node2D
var Level
var win_cond

# HAS WIN CONDITION

func _ready():
	Level = int(get_tree().current_scene.name)


func _process(delta):
	if Level == 1:
		win_cond = (Global.score == Global.level_1_max_cascaritas)
		if win_cond: change_level()
			
	elif Level == 2:
		win_cond = false
		if win_cond: change_level()
		
	
	
func change_level():
	var next_lvl = str(int(get_tree().current_scene.name) + 1)
	print('Next level: ', next_lvl)
	get_tree().change_scene("res://Scenes/Level_" + next_lvl + ".tscn") 
	
