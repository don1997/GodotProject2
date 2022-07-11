extends Area2D

export var speed = 750

##fixes bullet collision with tilemap
##https://godotforums.org/d/23687-body-entered-signal-seemingly-not-working
func _ready():
	connect("body_entered", self, "_on_Bullet_body_entered")
	
func _physics_process(delta):
	position += transform.x * speed * delta 


func _on_Bullet_body_entered(body):
	queue_free()
	
