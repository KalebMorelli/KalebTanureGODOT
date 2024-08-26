extends Node2D
@onready var game_over = $GameOver

@onready var jogador = $Jogador

func _ready():
	jogador.morreu.connect(resetar)

func resetar():
	$GameOver.visible = true
	get_tree().change_scene_to_file("res://GameOver.tscn")


