extends Area2D

@onready var jogador = $"../../../Jogador"


func _on_body_entered(body):
	if body.name=="Jogador":
		get_tree().change_scene_to_file("res://GameOver.tscn")
