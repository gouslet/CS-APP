CFLAGS := -g -I../../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  10.1\
		10.2\
		10.3\
		10.5\
		10.6\
		10.7\
		10.8\
		10.9\
		10.10

all: $(PROGS)

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c

clean:
	rm -f $(PROGS) *~