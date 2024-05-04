extends CharacterBody2D

var speed:int = 100
var max_speed = 10
func handleInput():
	var moveDir = Input.get_vector("left","right","up","down")
	velocity = moveDir * speed

func _physics_process(delta):
	handleInput()
	move_and_slide()
	look_at(get_global_mouse_position())
	rotation_degrees +=90
