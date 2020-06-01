#include "sea_dsa.h"

int execlp(const char *file, const char *argv0, ...) {
sea_dsa_set_read(file);
sea_dsa_set_read(argv0);
int retVal = 0;
return retVal;

}