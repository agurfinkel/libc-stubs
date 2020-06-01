#include "sea_dsa.h"

int fscanf(FILE *restrict f, const char *restrict fmt, ...) {
sea_dsa_set_read(f);
sea_dsa_set_read(fmt);
sea_dsa_set_modified(fmt);
int retVal = 0;
return retVal;

}