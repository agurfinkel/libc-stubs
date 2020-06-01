#include "sea_dsa.h"

int fputs(const char *restrict s, FILE *restrict f) {
sea_dsa_set_read(s);
sea_dsa_set_read(f);
sea_dsa_set_modified(f);
int retVal = 0;
return retVal;

}