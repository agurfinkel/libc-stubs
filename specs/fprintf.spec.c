#include "sea_dsa.h"

int fprintf(FILE *restrict f, const char *restrict fmt, ...) {
sea_dsa_set_read(f);
sea_dsa_set_modified(f);
sea_dsa_set_read(fmt);
int retVal = 0;
return retVal;

}