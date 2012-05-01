CC = gcc
TARGET = foomain
CFLAGS = -Wall -Werror
SRC = $(wildcard *.c)

ifeq ($(STATIC), 1)
CFLAGS += -static
endif

default: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -L../lib -I../lib $< -o $@ -lfoo

clean:
	rm -f $(TARGET)
