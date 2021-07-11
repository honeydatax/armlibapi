#include <sys/mman.h>

int execss(void *adds,int lens){
	mprotect(adds,(size_t)lens,PROT_READ | PROT_WRITE | PROT_EXEC);
}
