CFLAGS := -g -I../../../code/include -I.
LDLIBS := -lpthread
CSAPP_SRC := ../../../code/src
CSAPP := csapp.c

PROGS :=  fork_1 waitpid1 waitpid2 shellex kill sigint_handler execve execve2 execve3

all: $(PROGS)

$(PROGS): $(CSAPP_SRC)/$(CSAPP)

clean:
	rm -f $(PROGS) *~