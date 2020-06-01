#include "sea_dsa.h"

char * strpbrk(const char *s, const char *b) {
sea_dsa_set_read(s);
sea_dsa_set_read(b);
char * retVal;
sea_dsa_alias(s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(const char *s);
sea_dsa_collapse(const char *b);
return retVal;

}