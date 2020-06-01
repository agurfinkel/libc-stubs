#include "sea_dsa.h"

void rewind(FILE *f) {
sea_dsa_set_read(f);
sea_dsa_set_modified(f);
sea_dsa_collapse(f);

}