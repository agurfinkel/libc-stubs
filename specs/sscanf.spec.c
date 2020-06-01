#include "sea_dsa.h"

int sscanf(const char *restrict s, const char *restrict fmt, ...) {
sea_dsa_set_read(s);
sea_dsa_set_read(fmt);
sea_dsa_set_modified(fmt);
int retVal = 0;
return retVal;

}