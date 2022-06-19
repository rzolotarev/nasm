#include "unistd.h"

static const char dunno[] = "sorry I am not familiar how to greet you\n";
static const char hello[] = "hello ";

int string_length(const char *s) {
	int i;
	for(i = 0; s[i]; i++);
	return i;
}


int main(int argc, char **argv) {
	if (argc < 2) {
		write(1, dunno, sizeof(dunno) - 1);
		return 1;
	}
	
	write(1, hello, sizeof(hello) - 1);
	write(1,  argv[1], string_length(argv[1]));
	write(1,  "\n", 1);

	return 0;
}
