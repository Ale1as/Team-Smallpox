extends CharacterBody2D

var speed:int = 200

@onready var animated_sprite = $AnimatedSprite2D
func handleInput():
	var moveDir = Input.get_vector("left","right","up","down")
	velocity = moveDir * speed

func _physics_process(delta):
	handleInput()
	move_and_slide()
	if(Input.is_action_pressed("down")):
		animated_sprite.play("front_walk")
	elif(Input.is_action_just_released("down")):
		animated_sprite.play("front")
		
	if(Input.is_action_pressed("up")):
		animated_sprite.play("back_walk")
	elif(Input.is_action_just_released("up")):
		animated_sprite.play("back")
		
	if(Input.is_action_pressed("left")):
		animated_sprite.play("left_walk")
	elif(Input.is_action_just_released("left")):
		animated_sprite.play("left")
		
	if(Input.is_action_pressed("right")):
		animated_sprite.play("right_walk")
	elif(Input.is_action_just_released("right")):
		animated_sprite.play("right")
