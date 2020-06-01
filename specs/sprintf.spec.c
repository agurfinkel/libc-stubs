#include "sea_dsa.h"

int sprintf(char *restrict s, const char *restrict fmt, ...) {
sea_dsa_set_read(s);
sea_dsa_set_modified(s);
sea_dsa_set_read(fmt);
int retVal = 0;
return retVal;

}