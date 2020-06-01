#include "sea_dsa.h"

char * fgets(char *restrict s, int n, FILE *restrict f) {
sea_dsa_set_modified(s);
sea_dsa_set_read(f);
char * retVal;
sea_dsa_alias(char *restrict s, retVal);
return retVal;

}