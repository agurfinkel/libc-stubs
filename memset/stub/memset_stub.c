#include <string.h>
#include <stdint.h>
#include <endian.h>
#include "memset_stub.h"
#include "sea_dsa.h"

void *memset_stub(void *dest, int c, size_t n)
{
	sea_dsa_collapse(dest);
	for(unsigned i = 0; i < n; i++)
	{
		((char*)dest)[i] = c;
	}
	
	return dest;
}


