#include "sea_dsa.h"

char * strrchr(const char *s, int c) {
sea_dsa_set_read(s);
char * retVal;
sea_dsa_alias(s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(s);
return retVal;

}