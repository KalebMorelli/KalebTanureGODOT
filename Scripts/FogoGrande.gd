extends Area2D

@onready var jogador = $"../../../Jogador"

func _on_body_entered(body):
	if body.name=="Jogador":
		jogador.levouDano(5)
