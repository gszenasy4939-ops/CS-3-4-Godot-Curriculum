# This next line allows the color of the coin to update without running the game
@tool

extends Area2D
class_name Coin

@export var color: Color
@export var gold_amount: int = 5

func _process(_delta: float) -> void:
	# Set the color of the coin
	$AnimatedSprite2D.material.set_shader_parameter("color", color)
	
	
func _ready():
	print("coin created")
	body_entered.connect(_on_body_entered)
	
	
func _on_body_entered(body):
	if body is Player:
		print("Player found Coin!")
		if body.has_method("collect_gold"):
			body.gold(gold_amount)
			print("Player collected " + str(gold_amount) + " Gold!")
		queue_free()
