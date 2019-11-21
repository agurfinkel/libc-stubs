#include <stdio.h>
#include <string.h>
#include "strcpy_stub.h"

int main() {
	char str1[]="aeiou";
	char src[10];
	char dest[10];
	strcpy_stub(src, str1);
	strcpy_stub(dest, "abcd");

	return 0;
}
