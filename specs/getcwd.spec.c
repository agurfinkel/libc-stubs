#include "sea_dsa.h"

char * getcwd(char *buf, size_t size) {
sea_dsa_set_modified(buf);
char * retVal;
sea_dsa_alias(buf, retVal);
return retVal;

}