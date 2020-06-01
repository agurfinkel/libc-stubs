#include "sea_dsa.h"

void clearerr(FILE *f) {
sea_dsa_set_read(f);
sea_dsa_set_modified(f);

}