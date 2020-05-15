#include <stdio.h>
#include <string.h>
#include "memcpy_stub.h"

int main()
{
    	int src[] = { 1, 2, 3, 4 };
	int dest[] = { 5, 4, 3, 2, 1 };
	
	memcpy_stub(src, dest, sizeof(int) * 4);
		
	return 0;
}
