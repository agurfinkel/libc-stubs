#include <string.h>
#include <stdint.h>
#include "strstr_stub.h"
#include "sea_dsa.h"

char *strstr_stub(const char *h, const char *n)
{
	sea_dsa_collapse((const void*)h);
	return *h == (unsigned char)n ? (char*) h : 0;
}
