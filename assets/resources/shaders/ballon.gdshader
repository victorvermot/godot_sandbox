shader_type canvas_item;
uniform float speed;

void vertex() {
	if (VERTEX.y <= 0.0) {
		VERTEX += vec2(sin(TIME * 5.2), 0);	
	}
}

void fragment() {
	// Called for every pixel the material is visible on.
}

//void light() {
	// Called for every pixel for every light affecting the CanvasItem.
	// Uncomment to replace the default light processing function with this one.
//}
