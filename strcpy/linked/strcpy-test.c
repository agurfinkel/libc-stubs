#include <stdio.h>
#include <string.h>
#include "mystrcpy.h"

int main() {
	char str1[]="aeiou";
	char src[10];
	char dest[10];
	mystrcpy(src, str1);
	mystrcpy(dest, "abcd");

	return 0;
}
