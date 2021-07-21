CFLAGS := -g -I../../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  myecho\
		8.3\
		8.4\
		8.5\
		snooze\
		8.8\
		8.11\
		8.12\
		8.13\
		8.14\
		8.15\
		8.16\
		8.18\
		8.20\
		8.21\
		8.22_test-1\
		8.22_test-2\
		8.24-1\
		8.24-2\
		8.25

all: $(PROGS)

myecho: 8.6.c
	# cc $(DEBUG) 8.6.c -o $@

snooze: 8.7.c
	cc 8.7.c $(CSAPP_SRC)/csapp.o snooze.o -o $@ $(CFLAGS) $(LDLIBS)

8.22.o: 8.22.c $(CSAPP_SRC)/csapp.o
	# cc -o $@ $^ $(CFLAGS) $(LDLIBS)


$(PROGS): $(CSAPP_SRC)/csapp.o snooze.o 8.22.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c

clean:
	rm -f $(PROGS) *~