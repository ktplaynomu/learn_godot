extends CharacterBody2D

var speed = 600

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector('LEFT',"RIGHT",'UP','DOWN')
	velocity = direction * speed
	move_and_slide()
	pass
