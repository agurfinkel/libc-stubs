#include "sea_dsa.h"

wchar_t * wcsncpy(wchar_t *restrict d, const wchar_t *restrict s, size_t n) {
sea_dsa_set_read(d);
sea_dsa_set_modified(d);
sea_dsa_set_read(s);
sea_dsa_set_modified(s);
wchar_t * retVal;
sea_dsa_alias(wchar_t *restrict d, const wchar_t *restrict s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(wchar_t *restrict d);
sea_dsa_collapse(const wchar_t *restrict s);
return retVal;

}