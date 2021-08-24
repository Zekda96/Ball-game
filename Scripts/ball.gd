extends Node2D

var Level
var ball_scale
var c
var max_c = Global.max_cascaritas

var std_r = 128 # Shape size is made of radius of 128 pixels with scale of 0.5

export var std_scale = 0.5
var min_scale


func _ready():
	
	print('ball.gd Ready')
	Level = int(get_tree().current_scene.name)
	max_c = Global.max_cascaritas
	

func _process(delta):
	c = Global.cascaritas
	if Level == 1:
		level_1_settings()
		ball_scale =  std_scale - ((std_scale - min_scale) * (c/max_c))
		print('Score = ', c, ' Goal: ', max_c, '. Scale by ', ball_scale)
		$Sprite.scale = Vector2(ball_scale, ball_scale)
		$CollisionShape2D.get_shape().set_radius(ball_scale * std_r)
		$Area2D/CollisionShape2D.get_shape().set_radius(ball_scale * std_r)
	
	if Level == 2:
		level_2_settings()
		ball_scale =  std_scale - ((std_scale - min_scale) * (c/max_c))
		print('Score = ', c, ' Goal: ', max_c, '. Scale by ', ball_scale)
		$Sprite.scale = Vector2(ball_scale, ball_scale)
		$CollisionShape2D.get_shape().set_radius(ball_scale * std_r)
		$Area2D/CollisionShape2D.get_shape().set_radius(ball_scale * std_r)



func level_1_settings():
	min_scale = 0.1
	
func level_2_settings():
	min_scale = 0.01
	
