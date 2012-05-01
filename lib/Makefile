CC = gcc
TARGET = libfoo.so
CFLAGS = -Wall -Werror
SRC = $(wildcard *.c)

default: $(TARGET)

$(TARGET): $(SRC:.c=.o)
	$(CC) $(CFLAGS) -shared $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -fpic -c $< -o $@

clean:
	rm -f *.o *.so
