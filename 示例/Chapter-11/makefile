CFLAGS := -g -I../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../code/src
CSAPP := csapp.c

PROGS :=  hostinfo\
		 echo_server\
		 echo_client\
		 adder\
		 tiny


all: $(PROGS)

$(PROGS): $(CSAPP_SRC)/csapp.o

$(CSAPP_SRC)/csapp.o: $(CSAPP_SRC)/csapp.c

clean:
	rm -f $(PROGS) *~