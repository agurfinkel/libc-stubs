#include "sea_dsa.h"

ssize_t read(int fd, void *buf, size_t count) {
sea_dsa_set_read(buf);
sea_dsa_set_modified(buf);
ssize_t retVal = 0;
return retVal;

}