#include "sea_dsa.h"

size_t strspn(const char *s, const char *c) {
sea_dsa_set_read(s);
sea_dsa_set_read(c);
size_t retVal = 0;
sea_dsa_collapse(s);
sea_dsa_collapse(c);
return retVal;

}