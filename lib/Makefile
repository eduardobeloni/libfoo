CC = gcc
AR = ar

LIBNAME ?= libfoo
TARGET = $(LIBNAME).so
TARGET_ST = $(LIBNAME).a

CFLAGS = -Wall -Werror
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)
DEP = (OBJ:.o=.d)

default: $(TARGET) $(TARGET_ST)

$(TARGET): $(OBJ)
	$(CC) $(CFLAGS) -shared $^ -o $@

$(TARGET_ST): $(OBJ)
	$(AR) rcs $@ $^

-include $(DEP)

%.o: %.c
	$(CC) $(CFLAGS) -fpic -c $< -o $@
	$(CC) -MM $(CFLAGS) $< > $*.d

clean:
	rm -f *.o *.so *.a *.d
