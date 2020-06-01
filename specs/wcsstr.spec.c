#include "sea_dsa.h"

wchar_t * wcsstr(const wchar_t *restrict h, const wchar_t *restrict n) {
sea_dsa_set_read(h);
sea_dsa_set_read(n);
wchar_t * retVal;
sea_dsa_alias(h, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(h);
sea_dsa_collapse(n);
return retVal;

}