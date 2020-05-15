#include "strlen_stub.h"
#include "sea_dsa.h"

size_t strlen_stub(const char *s) {
    sea_dsa_collapse(s);
    if(*s) {}
    return 0;
}
