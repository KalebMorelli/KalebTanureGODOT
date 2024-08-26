extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -310.0
var is_dead = false

signal morreu
var vida = 3
var TomandoDano
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var is_jumping = false

func _physics_process(delta):
	
	if not is_on_floor():
		velocity.y += gravity * delta

	
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		is_jumping = true
	else:
		is_jumping = false

	
	
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction and !TomandoDano:
		print(direction)
		velocity.x = direction * SPEED
		$AnimacaoJogador.scale.x = direction
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if !TomandoDano:		
		if is_on_floor():
			if is_jumping:
				$AnimacaoJogador.play("PlayerJump")				
			elif direction !=0:
				$AnimacaoJogador.play("PlayerRun")
			
			elif direction == 0:
				$AnimacaoJogador.play("PlayerIdle")
			
	move_and_slide()
	
func levouDano(dano):
	TomandoDano = true
	
	velocity.x = -800
	$AnimacaoJogador.play("PlayerHit")
	await $AnimacaoJogador.animation_finished
	vida -= dano
	TomandoDano = false
	
	
	if vida <= 0:
		_morreu()
		
func _morreu():
	emit_signal("morreu")

