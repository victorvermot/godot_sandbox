shader_type canvas_item;

uniform vec4 new_color : source_color;
uniform vec4 old_color : source_color;
uniform float color_threshold : hint_range(0.0, 1.0, 0.001);

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	vec4 current_color = texture(TEXTURE, UV);

	uvec4 uint_curr_color = uvec4(round(current_color * 255.0));
	uvec4 uint_og_color = uvec4(round(old_color * 255.0));
	if (uint_curr_color == uint_og_color){
		COLOR = new_color;
	}
	else{
		COLOR = current_color;
	}
}

