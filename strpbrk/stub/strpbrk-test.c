#include <stdio.h>
#include <string.h>
#include "strpbrk_stub.h"

int main(){
	const char s1[] = "abc";
	const char s2[] = "123";
	const char s3[] = "edctyu";

	char* a = strpbrk_stub(s1,s2);
	char* b = strpbrk_stub(s1,s3);

	printf("success: %s\n", b);
	printf("failure: %s\n", a);

	return 0;
}

