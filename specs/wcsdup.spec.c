#include "sea_dsa.h"

wchar_t * wcsdup(const wchar_t *s) {
sea_dsa_set_read(s);
wchar_t * retVal;
sea_dsa_alias(const wchar_t *s, retVal);
return retVal;

}