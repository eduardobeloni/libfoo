CC = gcc
TARGET = libfoo.so
CFLAGS = -Wall -Werror
SRC = $(wildcard *.c)

default: $(TARGET)

$(TARGET): $(SRC:.c=.o)
	$(CC) $(CFLAGS) -shared $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -fpic -c $<

clean:
	rm -f *.o *.so
