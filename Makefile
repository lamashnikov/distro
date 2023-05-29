CC = gcc # Flag for implicit rules
CFLAGS = -O3 # Flag for implicit rules. Turn on debug info
LDFLAGS = 
# Implicit rule #1: blah is built via the C linker implicit rule
# Implicit rule #2: blah.o is built via the C compilation implicit rule, because blah.c exists


SRCS = src/main.c\

OBJS = $(SRCS:.c=.o)

distro : $(OBJS)
	$(CC) $^ -o $@ $(LDFLAGS)  

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

clean: distro
	rm $^

fclean: clean
	rm src/*.o
