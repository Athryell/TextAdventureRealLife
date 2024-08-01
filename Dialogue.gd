extends Node


func _ready():
	if Dialogic.current_timeline != null:
		return

	Dialogic.start("res://dialogic/intro/intro.dtl")
	get_viewport().set_input_as_handled()
