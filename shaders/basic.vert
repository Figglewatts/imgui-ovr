#version 330 core

layout (location = 0) in vec3 in_Position;
layout (location = 1) in vec3 in_Norm;
layout (location = 2) in vec2 in_UV;
layout (location = 3) in vec4 in_Color;

uniform mat4 ModelViewMatrix;
uniform mat4 ProjectionMatrix;

out vec4 ex_Color;

void main()
{
	gl_Position = ProjectionMatrix * ModelViewMatrix * vec4(in_Position.xyz, 1.0);
    ex_Color = in_Color;
}