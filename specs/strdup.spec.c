#include "sea_dsa.h"

char * strdup(const char *s) {
sea_dsa_set_read(s);
char * retVal;
sea_dsa_alias(s, retVal);
return retVal;

}