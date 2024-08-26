extends CanvasLayer

func _ready():
	visible = false

func _on_botao_sair_pressed():
	get_tree().quit()
	


func _on_botao_continuar_pressed():
	get_tree().paused = false
	visible = false


func _on_botao_reiniciar_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://CenaPrincipal.tscn")
	
	
func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().paused = true
		visible = true
