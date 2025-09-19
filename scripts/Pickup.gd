@tool
extends Area2D
class_name pickup


@export var amount: int
@export var type: String
@export var label: String
#@export var sound:audiofile


func _ready():
	body_entered.connect(_on_body_entered)
	config_pickup(amount, label, type)



func _on_body_entered (body):
	if body.name == "Player":
		body.collect_pickup(amount, type)

func config_pickup(_amount: int, _label: String, _type: String) -> bool:
	amount = _amount
	if type == "coin":
		if label == "copper":
			amount = 5
			return true
		elif label == "silver":
			amount = 10
			return true
		elif label == "gold":
			amount = 15
			return true
		else:
			return false
	elif type == "potion":
		if label == "red":
			amount = 10
			return true
		elif label == "blue":
			amount = 15
			return true
		elif label == "green":
			amount = 30
			return true
		else:
			return false
	else:
		return false
