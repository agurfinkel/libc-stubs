#include <stdio.h>
#include <string.h>
#include "memset_stub.h"

int main()
{
    	int p1[] = { 1, 2, 3, 4 };
	int *p2 = malloc(sizeof(int) * 10);
	
	memset_stub(p1, 0, sizeof(int) * 4);
	memset_stub(p2, 0, sizeof(int) * 10);
		
	return 0;
}
