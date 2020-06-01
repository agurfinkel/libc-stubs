#include "sea_dsa.h"

wchar_t * wcspbrk(const wchar_t *s, const wchar_t *b) {
sea_dsa_set_read(s);
sea_dsa_set_read(b);
wchar_t * retVal;
sea_dsa_alias(const wchar_t *s, retVal);
sea_dsa_collapse(retVal);
sea_dsa_collapse(const wchar_t *s);
sea_dsa_collapse(const wchar_t *b);
return retVal;

}