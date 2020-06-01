#include "sea_dsa.h"

char * strstr(const char *h, const char *n) {
sea_dsa_set_read(h);
sea_dsa_set_read(n);
char * retVal;
sea_dsa_alias(const char *h, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(const char *h);
sea_dsa_collapse(const char *n);
return retVal;

}