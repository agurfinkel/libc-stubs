#include "sea_dsa.h"

char * strstr(const char *h, const char *n) {
sea_dsa_set_read(h);
sea_dsa_set_read(n);
char * retVal;
sea_dsa_alias(h, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(h);
sea_dsa_collapse(n);
return retVal;

}