#include "sea_dsa.h"

int fclose(FILE *f) {
sea_dsa_set_read(f);
sea_dsa_set_modified(f);
int retVal = 0;
return retVal;

}