extends Node2D

var Level
var ball_scale
var c
var max_c

export var std_scale = 0.5
var min_scale



func _ready():
	Level = int(get_tree().current_scene.name)
	


func _process(delta):
	c = float(Global.cascaritas)
	if Level == 1:
		
		level_1_settings()
		max_c = float(Global.level_1_max_cascaritas)
		print('Score = ', c, ' Goal: ', max_c)
		ball_scale =  std_scale - ((std_scale - min_scale) * (c/max_c))
		print('Scale by ', ball_scale)
		$Sprite.scale = Vector2(ball_scale, ball_scale)
		$CollisionShape2D.scale = Vector2(ball_scale, ball_scale)
		$Area2D/CollisionShape2D.scale = Vector2(ball_scale, ball_scale)


	
func level_1_settings():
	min_scale = 0.01
	
