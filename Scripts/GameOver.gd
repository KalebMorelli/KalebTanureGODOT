extends CanvasLayer

func _ready():
	pass
	

func _on_game_over_continuar_pressed():
	pass
	get_tree().change_scene_to_file("res://CenaPrincipal.tscn")


func _on_game_over_sair_pressed():
	pass
	get_tree().quit()

