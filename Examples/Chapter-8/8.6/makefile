DEBUG := -g
CFLAGS := -I../../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  setjmp\
			restart

all: $(PROGS)

$(PROGS): $(CSAPP_SRC)/$(CSAPP)


clean:
	rm -f $(PROGS) *~