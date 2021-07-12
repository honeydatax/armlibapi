#include <stdio.h>
#include <sys/mman.h>

int *execss(int lens){
	int *ptr=mmap(NULL,lens,PROT_READ | PROT_WRITE | PROT_EXEC,MAP_PRIVATE | MAP_ANONYMOUS ,0,0);
	if(ptr==MAP_FAILED){
		ptr=(int *)-1;
	}
	return ptr;
}
int uexecss(int *ptr,int lens){
	int ptrs=munmap(ptr,lens);
	return ptrs;
}


