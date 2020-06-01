#include "sea_dsa.h"

int snprintf(char *restrict s, size_t n, const char *restrict fmt, ...) {
sea_dsa_set_read(s);
sea_dsa_set_modified(s);
sea_dsa_set_read(fmt);
int retVal = 0;
return retVal;

}