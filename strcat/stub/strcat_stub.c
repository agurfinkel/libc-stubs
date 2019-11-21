#include "strcat_stub.h"
#include "sea_dsa.h"

char* strcat_stub(char *restrict dest, const char *restrict src)
{
	sea_dsa_collapse((const void*)dest);
	sea_dsa_collapse((const void*)src);
	if (*dest || *src){} // read dest and src
	return (char*)dest; 
}
