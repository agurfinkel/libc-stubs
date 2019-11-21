#include <stdio.h>
#include <string.h>

int main(){
	char str1[50] = "abc";
	char str2[] = "123";
	strcat(str1, str2);

	printf("%s\n", str1);

	return 0;
}
