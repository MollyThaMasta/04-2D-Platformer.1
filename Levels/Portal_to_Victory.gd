extends Area2D


func _ready():
	pass



func _on_Portal_to_Victory_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://Levels/Victory.tscn")
