extends CharacterBody2D
class_name NPC


var dialogue 
var speed: int = 200
var direction: Vector2 = Vector2.DOWN
var health: int = 10
var damage: int = 1
var ishostile: bool = false
var type: String

func _ready():
	pass

func _process(_delta):
	movement(_delta)
	pass
	
func _on_body_entered ():
	pass
	
func movement(_delta):
	if ishostile == true:
		move_and_slide()
	elif ishostile == false:
		pass
