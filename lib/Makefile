CC = gcc
AR = ar

LIBNAME ?= libfoo
TARGET = $(LIBNAME).so
TARGET_ST = $(LIBNAME).a

CFLAGS = -Wall -Werror
SRC = $(wildcard *.c)

default: $(TARGET) $(TARGET_ST)

$(TARGET): $(SRC:.c=.o)
	$(CC) $(CFLAGS) -shared $< -o $@

$(TARGET_ST): $(SRC:.c=-st.o)
	$(AR) rcs $@ $<

-include $(OBJ:.o=.d)

%.o: %.c
	$(CC) $(CFLAGS) -fpic -c $< -o $@
	$(CC) -MM $(CFLAGS) $< > $*.d

%-st.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f *.o *.so *.a *.d
