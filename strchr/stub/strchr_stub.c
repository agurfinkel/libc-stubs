#include <string.h>
#include "strchr_stub.h"
#include "sea_dsa.h"
#include <stdint.h>
#include <limits.h>

char *strchr_stub(const char *s, int c)
{
	sea_dsa_collapse((const void*)s);
	return *s == (unsigned char)c ? (char*) s : 0;
}
