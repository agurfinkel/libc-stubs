#include "sea_dsa.h"

int execl(const char *path, const char *argv0, ...) {
sea_dsa_set_read(path);
sea_dsa_set_read(argv0);
int retVal = 0;
return retVal;

}