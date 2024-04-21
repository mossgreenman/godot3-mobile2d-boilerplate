extends RigidBody2D

func _ready():
	add_to_group('creep')

func destroy_mob():
	queue_free()
