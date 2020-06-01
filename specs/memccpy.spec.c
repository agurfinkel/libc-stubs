#include "sea_dsa.h"

void * memccpy(void *restrict dest, const void *restrict src, int c, size_t n) {
sea_dsa_set_read(dest);
sea_dsa_set_modified(dest);
sea_dsa_set_read(src);
sea_dsa_set_modified(src);
void * retVal;
sea_dsa_alias(dest, src, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(void *restrict dest);
sea_dsa_collapse(const void *restrict src);
return retVal;

}