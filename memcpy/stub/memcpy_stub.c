#include "memcpy_stub.h"
#include "sea_dsa.h"

void *memcpy_stub(void *restrict dest, const void *restrict src, size_t n)
{
    sea_dsa_collapse(dest);
    sea_dsa_collapse(src);
    if(*(unsigned char*)src) {}
    return dest;
}
