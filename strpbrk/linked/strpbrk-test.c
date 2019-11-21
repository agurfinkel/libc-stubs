#include <stdio.h>
#include <string.h>
#include "mystrpbrk.h"

int main(){
	const char s1[] = "abc";
	const char s2[] = "123";
	const char s3[] = "edctyu";

	char* a = mystrpbrk(s1,s2);
	char* b = mystrpbrk(s1,s3);

	printf("success: %s\n", b);
	printf("failure: %s\n", a);

	return 0;
}

