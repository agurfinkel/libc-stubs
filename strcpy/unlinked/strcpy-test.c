#include <stdio.h>
#include <string.h>

int main() {
	char str1[]="aeiou";
	char src[10];
	char dest[10];
	strcpy(src, str1);
	strcpy(dest, "abcd");

	return 0;
}
