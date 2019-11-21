#include <stdio.h>
#include <string.h>
#include "strchr_stub.h"

int main() {

	const char vowel[] = "aeiou";
	const char v = 'i';
	const char c = 'b';
	char* retS;
	char* retF;

	retS = strchr_stub(vowel, v);
	retF = strchr_stub(vowel, c);

	printf("success: %s \nfail: %s\n", retS, retF);

	return (0);
}
