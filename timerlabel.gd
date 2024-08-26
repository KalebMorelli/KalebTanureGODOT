extends Label

@onready var label = self
@onready var gameTimer = $GameTimer

func _physics_process(delta):
	label.set_text(str(time_to_minutes_secs_mili(gameTimer.get_time_left())))

func time_to_minutes_secs_mili(time : float):
	var mins = int(time) / 60
	time -= mins * 60
	var secs = int(time)
	var mili = int((time - int(time)) * 100)
	return str(mins) + ":" + str(secs)
