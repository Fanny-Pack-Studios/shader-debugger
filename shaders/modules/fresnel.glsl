vec3 fresnel_glow(float amount, float intensity, vec3 col, vec3 normal, vec3 view)
{
	return pow((1.0 - dot(normalize(normal), normalize(view))), amount) * col * intensity;
}

#pragma glslify: export(fresnel_glow)
