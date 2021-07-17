DEBUG := -g
CFLAGS := -I../../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  myecho

all: $(PROGS)

$(PROGS): 8.6.c
	cc $(DEBUG) 8.6.c -o $(PROGS)
clean:
	rm -f $(PROGS) *~