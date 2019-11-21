#include <stdio.h>
#include <string.h>

int main(){
	char s1[] = "abc";
	char s2[] = "123";
	char s3[] = "edctyu";

	char* a = strpbrk(s1,s2);
	char* b = strpbrk(s1,s3);

	printf("success: %s\n", b);
	printf("failure: %s\n", a);

	return 0;
}

