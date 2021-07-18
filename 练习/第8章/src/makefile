DEBUG := -g
CFLAGS := -I../../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  myecho\
		8.3\
		8.4\
		8.5

all: $(PROGS)

myecho: 8.6.c
	cc $(DEBUG) 8.6.c -o $@
$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c
clean:
	rm -f $(PROGS) *~