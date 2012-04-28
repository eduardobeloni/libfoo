CC = gcc
TARGET = foomain
CFLAGS = -Wall -Werror
SRC = $(wildcard *.c)

default: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -L../lib -I../lib $< -o $@ -lfoo

clean:
	rm -f $(TARGET)
