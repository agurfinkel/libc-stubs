#include <stdio.h>
#include <string.h>

int main() {

	const char vowel[] = "aeiou";
	const char v = 'i';
	const char c = 'b';
	char* retS;
	char* retF;

	retS = strchr(vowel, v);
	retF = strchr(vowel, c);

	printf("success: %s \nfail: %s\n", retS, retF);

	return (0);
}
