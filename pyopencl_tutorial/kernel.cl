#pragma OPENCL EXTENSION cl_khr_fp16 : enable
#pragma OPENCL EXTENSION cl_arm_printf : enable

__kernel void add1(__global float* a, __global float* b, __global float* c) 
{ 
	__global half* a1 = (half*)a;
	__global half* b1 = (half*)b;
	__global half* c1;

	printf("fuck\n", a[0]);
	printf("%f\n", a[0]);
	uint i = get_global_id(0);
	c[i] = a1[i];
	
}
