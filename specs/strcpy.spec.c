#include "sea_dsa.h"

char * strcpy(char *restrict dest, const char *restrict src) {
sea_dsa_set_read(dest);
sea_dsa_set_modified(dest);
sea_dsa_set_read(src);
sea_dsa_set_modified(src);
char * retVal;
sea_dsa_alias(dest, src, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(dest);
sea_dsa_collapse(src);
return retVal;

}