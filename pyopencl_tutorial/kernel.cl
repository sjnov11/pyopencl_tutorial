#pragma OPENCL EXTENSION cl_khr_fp16 : enable
#pragma OPENCL EXTENSION cl_arm_printf : enable

__kernel void add1(__global float* a, __global float* b, __global float* c, __global float* d, __global float* e) 
{ 
	__global half* a1 = (__global half*)a;
	__global half* b1 = (__global half*)b;
	__global half* c1;
	
	uint i = get_global_id(0);
	c[i] = a[i] + b[i];
	d[i] = a1[i];
	e[i] = b1[i];
	
}
