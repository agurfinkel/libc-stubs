#include "sea_dsa.h"

char * gets(char *s) {
sea_dsa_set_modified(s);
char * retVal;
sea_dsa_alias(char *s, retVal);
return retVal;

}