extends Button

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var mouse_status = false

func on_release():
	#if (mouse_status == true):
	get_tree().quit()
	pass

func focus():
	mouse_status = true
	pass

func notFocus():
	mouse_status = false
	pass

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	connect("pressed", self, "on_release")
	#connect("mouse_enter", self, "focus")
	#connect("mouse_exit", self, "notFocus")
	pass
