#include "sea_dsa.h"

FILE * fopen(const char *restrict filename, const char *restrict mode) {
sea_dsa_set_read(filename);
sea_dsa_set_read(mode);
FILE * retVal;
return retVal;

}