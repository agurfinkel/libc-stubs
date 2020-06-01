#include "sea_dsa.h"

wchar_t * wcscpy(wchar_t *restrict d, const wchar_t *restrict s) {
sea_dsa_set_read(d);
sea_dsa_set_modified(d);
sea_dsa_set_read(s);
sea_dsa_set_modified(s);
wchar_t * retVal;
sea_dsa_alias(d, s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(d);
sea_dsa_collapse(s);
return retVal;

}