CFLAGS := -g -I../../../code/include -I.
LDLIBS := -lpthread -lm
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  11.2

all: $(PROGS)

$(PROGS): $(CSAPP_SRC)/$(CSAPP)

clean:
	rm -f $(PROGS) *~