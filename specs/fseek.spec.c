#include "sea_dsa.h"

int fseek(FILE *f, long off, int whence) {
sea_dsa_set_read(f);
sea_dsa_set_modified(f);
int retVal = 0;
sea_dsa_collapse(f);
return retVal;

}