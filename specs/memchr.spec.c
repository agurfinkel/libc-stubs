#include "sea_dsa.h"

void * memchr(const void *src, int c, size_t n) {
sea_dsa_set_read(src);
void * retVal;
sea_dsa_alias(src, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(src);
return retVal;

}