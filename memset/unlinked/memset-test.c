#include <stdio.h>

int main()
{
    	char p1[] = { 1, 2, 3, 4 };
	char *p2 = malloc(sizeof(char) * 10);
	
	memset(p1, 0, sizeof(char) * 4);
	memset(p2, 0, sizeof(char) * 10);
		
	return 0;
}
