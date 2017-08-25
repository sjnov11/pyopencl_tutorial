__kernel void add1(__global float* a, __global float* b, __global float* c) 
{ 
	uint i = get_global_id(0);
	c[i] = a[i] + b[i];
}
