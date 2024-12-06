extends Sprite2D

var velocity: Vector2 = Vector2(0, 0)
var collision: CollisionShape2D = null
var platforms: Node = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	collision = self.find_child("Area2D2").find_child("CollisionShape2D")
	platforms = get_tree().get_root().find_node("Platforms")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if velocity.x != 0 and velocity.y != 0:
		for platform in platforms.get_children():
			
