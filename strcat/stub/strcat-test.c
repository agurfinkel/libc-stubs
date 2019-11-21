#include <stdio.h>
#include <string.h>
#include "strcat_stub.h"

int main(){
	char str1[50] = "abc";
	char str2[] = "123";
	strcat_stub(str1, str2);

	printf("%s\n", str1);

	return 0;
}
