#version 330 compatibility

out vec2 vST;
out vec3 vN;
out vec3 vL;
out vec3 vE;

void main() {
	vST = gl_MultiTexCoord0.st;
	vec4 ECposition = gl_ModelViewMatrix * gl_Vertex;
	vN = normalize(gl_NormalMatrix * gl_Normal);
	vL = vec3(0., 2., 0.) - ECposition.xyz;
	vE = vec3(0., 0., 0.) - ECposition.xyz;
}