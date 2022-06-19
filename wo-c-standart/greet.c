#include "stdio.h"

int main(int argc, char **argv) {
	if (argc < 2) {
		printf("sorry I am not familiar how to greet you\n");
		return 1;
	}
	
	printf("hello %s\n", argv[1]);
	return 0;
}
