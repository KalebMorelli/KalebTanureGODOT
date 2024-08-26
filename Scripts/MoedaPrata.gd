extends Area2D


func _on_body_entered(body):
	if body.name == "Jogador":
		ScriptGlobal.pontos += 1
		print (ScriptGlobal.pontos)
		$AnimacaoMoedaPrata.play("ColetadoMoedaPrata")
		await $AnimacaoMoedaPrata.animation_finished
		queue_free()
