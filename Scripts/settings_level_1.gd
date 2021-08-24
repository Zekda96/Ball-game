extends Node2D

export(int) var level_1_max_cascaritas = 5


func _ready():
	print('settings_level_1.gd ready')
	Global.max_cascaritas = level_1_max_cascaritas
