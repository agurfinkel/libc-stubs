#include <string.h>
#include "mystrcpy.h"

char *mystrcpy(char *restrict dest, const char *restrict src)
{
	__stpcpy(dest, src);
	return dest;
}
