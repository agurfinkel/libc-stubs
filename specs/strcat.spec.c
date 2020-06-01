#include "sea_dsa.h"

char * strcat(char *restrict dest, const char *restrict src) {
sea_dsa_set_read(dest);
sea_dsa_set_modified(dest);
sea_dsa_set_read(src);
sea_dsa_set_modified(src);
char * retVal;
sea_dsa_alias(dest, src, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(char *restrict dest);
sea_dsa_collapse(const char *restrict src);
return retVal;

}