extends CharacterBody2D
class_name NPC


var dialogue 
var speed: int = 200
#var direction: Vector2 = Vector2.DOWN
var health: int = 10
var damage: int = 1
var ishostile: bool = false
var type: String
var current_point = 0
@export var move_points : Array[Vector2] = []
#var playerloc: int = 

#func _g

func _ready():
	pass

func _physics_process(_delta: float) -> void:
	movement(_delta)
	move_and_slide()
	


func movement(_delta):
	var target : Vector2 = move_points[current_point]
	var target_direction : Vector2
	if ishostile == true:
		pass
	elif ishostile == false:
		target_direction = position.direction_to(target)
		velocity = speed * target_direction
		if position.distance_to(target)<5:
			current_point +=1
			if current_point > move_points.size()-1:
				current_point = 0

func wait(seconds: float) -> void:
	await get_tree().create_timer(seconds).timeout
	print (position)
