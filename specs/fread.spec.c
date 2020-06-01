#include "sea_dsa.h"

size_t fread(void *restrict destv, size_t size, size_t nmemb, FILE *restrict f) {
sea_dsa_set_modified(destv);
sea_dsa_set_read(f);
sea_dsa_set_modified(f);
size_t retVal = 0;
return retVal;

}