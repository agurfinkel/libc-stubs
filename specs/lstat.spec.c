#include "sea_dsa.h"

int lstat(const char *restrict path, struct stat *restrict buf) {
sea_dsa_set_read(path);
sea_dsa_set_modified(buf);
int retVal = 0;
return retVal;

}