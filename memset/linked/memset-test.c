#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "mymemset.h"

int main()
{
    	char p1[] = { 1, 2, 3, 4 };
	char *p2 = malloc(sizeof(char) * 10);
	
	mymemset(p1, 0, sizeof(char) * 4);
	mymemset(p2, 0, sizeof(char) * 10);
		
	return 0;
}
