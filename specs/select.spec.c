#include "sea_dsa.h"

int select(int n, fd_set *restrict rfds, fd_set *restrict wfds, fd_set *restrict efds, struct timeval *restrict tv) {
sea_dsa_set_read(rfds);
sea_dsa_set_modified(rfds);
sea_dsa_set_read(wfds);
sea_dsa_set_read(efds);
sea_dsa_set_read(tv);
int retVal = 0;
return retVal;

}