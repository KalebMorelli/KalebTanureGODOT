extends CharacterBody2D

@onready var DT_Colisao := $DT_ColisaoAranha as RayCast2D
@onready var DT_Colisao2 := $DT_ColisaoAranha2 as RayCast2D

@export var jogador : CharacterBody2D
const SPEED = 1850.0
const JUMP_VELOCITY = -400.0
var direction := 1
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
	if DT_Colisao.is_colliding():
		direction *= -1
		$AnimacaoAranha.flip_h = false
	if DT_Colisao2.is_colliding():
		$AnimacaoAranha.flip_h = true
		direction *= -1
	

	velocity.x = direction * SPEED * delta


	move_and_slide()


func _on_area_2d_body_entered(body):
	if body == jogador:
		jogador.levouDano(1)
		
