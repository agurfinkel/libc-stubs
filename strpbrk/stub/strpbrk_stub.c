#include <string.h>
#include "strpbrk_stub.h"
#include "sea_dsa.h" 

char *strpbrk_stub(const char *s, const char *b)
{
	sea_dsa_collapse((const void*)s);
	sea_dsa_collapse((const void*)b);
	return *s ? (char *)s : 0;
}
