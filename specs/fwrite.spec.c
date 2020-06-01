#include "sea_dsa.h"

size_t fwrite(const void *restrict src, size_t size, size_t nmemb, FILE *restrict f) {
sea_dsa_set_read(src);
sea_dsa_set_read(f);
sea_dsa_set_modified(f);
size_t retVal = 0;
return retVal;

}