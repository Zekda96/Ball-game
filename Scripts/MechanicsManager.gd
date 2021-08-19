extends Node2D

var Level
export(int) var level_1_max_cascaritas = 1

func _ready():
	Global.level_1_max_cascaritas = level_1_max_cascaritas
	Level = int(get_tree().current_scene.name)

func _process(delta):
	if Level == 1:
		pass
		#Add mechanics
		#scale = 1 - (  / Global.cascaritas)
		#Global.ball_scale = 
			
	if Level == 2:
		pass
