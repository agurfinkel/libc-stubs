#include "sea_dsa.h"

void * memcpy(void *restrict dest, const void *restrict src, size_t n) {
sea_dsa_set_read(dest);
sea_dsa_set_modified(dest);
sea_dsa_set_read(src);
sea_dsa_set_modified(src);
void * retVal;
sea_dsa_alias(dest, src, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(dest);
sea_dsa_collapse(src);
return retVal;

}