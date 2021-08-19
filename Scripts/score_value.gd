extends Label

var value

func _process(_delta):
	value = Global.score
	set_text(str(Global.score))
