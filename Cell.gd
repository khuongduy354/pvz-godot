extends Node2D




func plant_tree(p: Plant.PlantTypes): 
	if $plant.get_child_count() > 0: 
		return false 
		
	var plant = Plant.get_node_from_type(p)
	$plant.add_child(plant)
	return true
	
