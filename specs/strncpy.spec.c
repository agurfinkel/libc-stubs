#include "sea_dsa.h"

char * strncpy(char *restrict d, const char *restrict s, size_t n) {
sea_dsa_set_read(d);
sea_dsa_set_modified(d);
sea_dsa_set_read(s);
sea_dsa_set_modified(s);
char * retVal;
sea_dsa_alias(char *restrict d, const char *restrict s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(char *restrict d);
sea_dsa_collapse(const char *restrict s);
return retVal;

}