#include "sea_dsa.h"

void bcopy(const void *s1, void *s2, size_t n) {
sea_dsa_set_read(s1);
sea_dsa_set_modified(s1);
sea_dsa_set_read(s2);
sea_dsa_set_modified(s2);
sea_dsa_alias(s1, s2);
sea_dsa_collapse(s1);
sea_dsa_collapse(s2);

}