#include "sea_dsa.h"

void * realloc(void *p, size_t n) {
sea_dsa_set_heap(p);
void * retVal;
sea_dsa_alias(p, retVal);
return retVal;

}