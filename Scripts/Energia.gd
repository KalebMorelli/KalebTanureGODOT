extends Area2D

func _on_body_entered(body):
	if body.name == "Jogador":
		ScriptGlobal.pontos += 1
		$AnimacaoCristal.play("ColetadoCristal")
		await $AnimacaoCristal.animation_finished
		queue_free()
