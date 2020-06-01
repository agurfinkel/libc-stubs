#include "sea_dsa.h"

char * strtok(char *restrict s, const char *restrict sep) {
sea_dsa_set_read(s);
sea_dsa_set_modified(s);
sea_dsa_set_read(sep);
sea_dsa_set_modified(sep);
char * retVal;
sea_dsa_alias(s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(char *restrict s);
sea_dsa_collapse(const char *restrict sep);
return retVal;

}