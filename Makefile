CC = gcc
SRC = src

all: hello sum extern_example static_example

hello: $(SRC)/hello.c
	$(CC) $(SRC)/hello.c -o hello

sum: $(SRC)/sum.c $(SRC)/sum_func.c
	$(CC) $(SRC)/sum.c $(SRC)/sum_func.c -o sum

extern_example: $(SRC)/extern_main.c $(SRC)/extern_var.c
	$(CC) $(SRC)/extern_main.c $(SRC)/extern_var.c -o extern_example

static_example: $(SRC)/static.c
	$(CC) $(SRC)/static.c -o static_example

run:
	./hello
	./sum
	./extern_example
	./static_example

clean:
	rm -f hello sum extern_example static_example

