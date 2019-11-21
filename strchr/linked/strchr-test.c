#include <stdio.h>
#include <string.h>
#include "mystrchr.h"

int main() {

	const char vowel[] = "aeiou";
	const char v = 'i';
	const char c = 'b';
	char* retS;
	char* retF;

	retS = mystrchr(vowel, v);
	retF = mystrchr(vowel, c);

	printf("success: %s \nfail: %s\n", retS, retF);

	return (0);
}
