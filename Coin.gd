extends Area2D

export var score = 100

func _ready():
	pass


func _on_Coin_body_entered(body):
	if body.name == "Player":
		var sound = get_node_or_null("/root/Game/Coin_sound")
		if sound != null:
			sound.playing = true
		Global.increase_score(score)
		queue_free()
	
