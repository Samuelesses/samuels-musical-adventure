extends Area2D

@export var next_scene_path: String = "res://scenes/bruno.tscn"

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		call_deferred("_change_scene")

func _change_scene() -> void:
	get_tree().change_scene_to_file(next_scene_path)
