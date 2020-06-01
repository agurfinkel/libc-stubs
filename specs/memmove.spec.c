#include "sea_dsa.h"

void * memmove(void *dest, const void *src, size_t n) {
sea_dsa_set_read(dest);
sea_dsa_set_modified(dest);
sea_dsa_set_read(src);
sea_dsa_set_modified(src);
void * retVal;
sea_dsa_alias(dest, src, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(void *dest);
sea_dsa_collapse(const void *src);
return retVal;

}