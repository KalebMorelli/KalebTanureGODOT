extends CanvasLayer



func _on_botao_start_pressed():
	get_tree().change_scene_to_file("res://CenaPrincipal.tscn")


func _on_botao_sair_jogo_pressed():
	get_tree().quit()
