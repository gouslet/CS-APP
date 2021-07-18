DEBUG := -g
CFLAGS := -I../../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  myecho\
		8.3\
		8.4\
		8.5\
		snooze\
		8.8


all: $(PROGS)

myecho: 8.6.c
	# cc $(DEBUG) 8.6.c -o $@
snooze: 8.7.c
	cc $(DEBUG) 8.7.c $(CSAPP_SRC)/csapp.o snooze.o -o $@ $(CFLAGS) $(LDLIBS)

$(PROGS): $(CSAPP_SRC)/csapp.o snooze.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c

clean:
	rm -f $(PROGS) *~