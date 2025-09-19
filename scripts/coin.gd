# This next line allows the color of the coin to update without running the game
@tool

extends pickup
class_name Coin
#coin = 5


@export var gold_value: int = 0
@export var auto_pickup: bool = true

func _on_body_entered (body):
	super._on_body_entered(body)
	queue_free()
