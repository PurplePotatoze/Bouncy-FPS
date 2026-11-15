extends CharacterBody3D

@onready  var camera  = $Head/Camera3D
@onready var head = $Head

const MOUSE_SENSITIVITY = 0.2
const GRAVITY = 10
const JUMP_SPEED = 4
const SPEED = 5.5
const ACCEL = 0.0

var current = Vector3.ZERO
var velocity_y = 0 

const BOB_FREQ = 1.8
const BOB_AMP = 0.05
var bob_speed = 0.0

func _ready():
	Input.set_mouse_mode(Imput.MOUSE_MODE_CAPTURED)
	
func _physics_process(delta: float) -> void:
	var dir_x = Input.get_action_strength("right") - Input.get_action_strength("left")
	var dir_z = Input.get_action_strength("foward") - Input.get_action_strength("back")
	var input_dir = Vector2(dir_x, dir_y).normalized()
	
