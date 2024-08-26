extends Control

@onready var contador = %Contadornum

func _ready():
	contador.text = str("%02d" % ScriptGlobal.pontos)
	

func _process(delta):
	contador.text = str("%02d" % ScriptGlobal.pontos)
