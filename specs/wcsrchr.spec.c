#include "sea_dsa.h"

wchar_t * wcsrchr(const wchar_t *s, wchar_t c) {
sea_dsa_set_read(s);
wchar_t * retVal;
sea_dsa_alias(s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(const wchar_t *s);
return retVal;

}