CFLAGS := -g -I../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../code/src
CSAPP := csapp.c

PROGS :=  cpfile statcheck

all: $(PROGS)

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c

clean:
	rm -f $(PROGS) *~