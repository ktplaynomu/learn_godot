extends CharacterBody2D

var speed = 600
func _ready() -> void:
	%HappyBoo.play_idle_animation()
	#get_node("HappyBoo")
	
func _physics_process(delta: float) -> void:
	var direction = Input.get_vector('LEFT',"RIGHT",'UP','DOWN')
	
	if(direction):
		%HappyBoo.play_walk_animation() #faster, works withing that scene only, not accessible by other nodes
		velocity = direction * speed

		print(velocity.x)
	
	else:
		$HappyBoo.play_idle_animation()
		velocity = direction * speed

	
	
	move_and_slide()
	
