#include <stdio.h>
#include <string.h>
#include "mymemcpy.h"

int main()
{
    	int src[] = { 1, 2, 3, 4 };
	int dest[] = { 5, 4, 3, 2, 1 };
	
	mymemcpy(src, dest, sizeof(int) * 4);
		
	return 0;
}
