all: $(subst .c,.exe,$(wildcard *.c))

helloworld.exe:helloworld.c
	cc -o $@ $<

clean:
	rm -f *.exe *.sa *.o

