extends Node


func _ready():
	Dialogic.signal_event.connect(_on_dialogic_signal)
	Dialogic.timeline_ended.connect(_on_ended)
	
	if Dialogic.current_timeline != null:
		return

	Dialogic.start("res://dialogic/intro/intro_preferences.dtl")
	get_viewport().set_input_as_handled()


func go_to_timeline(timeline):
	var tl: String = "res://dialogic/intro/" + timeline + ".dtl"
	Dialogic.start(tl)


func _on_ended():
	Dialogic.timeline_ended.disconnect(_on_ended)
	print("ended")


func _on_dialogic_signal(arg):
	match arg:
		"set_language_ita":
			print("ita")
		"set_language_eng":
			print("eng")
		"set_font_base":
			print("base font")
		"set_font_opendislexic":
			print("opendislexic font")

