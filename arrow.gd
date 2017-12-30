
extends Area2D

# Member variables
const SPEED = 800

var hit = false


func _process(delta):
	translate(Vector2(delta*SPEED, 0))


func _ready():
	set_process(true)


func _hit_something():
	if (hit):
		return
	hit = true
	set_process(false)
	get_node("anim").play("splash")

func _on_Visibility_exit_screen():
	queue_free()
	pass # replace with function body

func _on_arrowArea_body_enter( body ):
	_hit_something()
	pass # replace with function body


func _on_arrowArea_area_enter( area ):
	# Hit an enemy or asteroid
	if (area.has_method("destroy")):
		# Duck typing at it's best
		area.destroy()
		_hit_something()
	pass # replace with function body
