extends Sprite



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _process(delta):
#	if Input.is_action_just_pressed("ui_down"):
#		position.y +=5
#	if Input.is_action_just_pressed("ui_up"):
#		position.y -=5
#	if Input.is_action_pressed("ui_right"):
#		position.x +=4
#	if Input.is_action_pressed("ui_left"):
#		position.x -=2

var velocidade=Vector2.ZERO

func _physics_process(delta):
	var vetor_entrada=Vector2.ZERO
	vetor_entrada.x = Input.get_action_strength("ui_right")-Input.get_action_strength("ui_left")
	vetor_entrada.y = Input.get_action_strength("ui_down")-Input.get_action_strength("ui_up")
	velocidade = vetor_entrada
	move_and_slide(velocidade*100)
