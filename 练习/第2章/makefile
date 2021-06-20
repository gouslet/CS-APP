DEBUG := -g
SRC := src/
LIB := lib/
INCLUDE := include
.PHONY:all

#all:$(subst .c,.exe,$(wildcard ))
all:2.11-1.exe 2.11-2.exe 2.26.exe

2.11-1.exe:$(SRC)2.11-1.c $(LIB)ch2-1.c
	cc $(DEBUG) -o 2.11-1.exe $(SRC)2.11-1.c $(LIB)ch2-1.c -I$(INCLUDE) 

2.11-2.exe:$(SRC)2.11-2.c $(LIB)ch2-2.c
	cc $(DEBUG) -o 2.11-2.exe $(SRC)2.11-2.c $(LIB)ch2-2.c -I$(INCLUDE) 

2.26.exe:$(SRC)2.26.c
	cc $(DEBUG) -o 2.26.exe $(SRC)2.26.c  
clean:
	rm -f *.exe