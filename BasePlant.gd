extends Node2D
class_name Plant

@export var plant_type: PlantTypes = PlantTypes.Peashooter
enum PlantTypes { 
	Peashooter, 
	Repeater,
	Walnut,
	Sunflower, 
	PotatoMine
}

static func get_node_from_type(_type: PlantTypes): 
	var sprite_path = ""
	var node_path = ""
	match _type: 
		PlantTypes.Peashooter: 
			sprite_path = "res://assets/main/peashooter1.png"
			node_path = "res://Plants/peashooter.tscn"
			pass 
		PlantTypes.Repeater:
			sprite_path = "res://assets/main/repeater1.png"
			node_path = "res://Plants/repeater.tscn"
			pass
		PlantTypes.Walnut:
			sprite_path = "res://assets/main/walnut1.png"
			node_path = "res://Plants/walnut.tscn"
			
			pass
		PlantTypes.Sunflower:
			sprite_path = "res://assets/main/sunfloweridle1.png"
			node_path = "res://Plants/sunflower.tscn"
			
			pass
		PlantTypes.PotatoMine:
			sprite_path = "res://assets/main/potatomine1.png"
			node_path = "res://Plants/potato_mine.tscn"
			
			pass
	var sprite = Sprite2D.new()
	sprite.texture = load(sprite_path) 
	var node = load(node_path).instantiate()
	node.add_child(sprite)
	return node
