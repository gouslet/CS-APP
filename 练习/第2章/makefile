DEBUG := -g
SRC := src/
LIB := lib/
INCLUDE := include
.PHONY:all

#all:$(subst .c,.exe,$(wildcard ))
all:2.11-1.exe 2.11-2.exe 2.26.exe 2.44.exe 2.55.exe 2.56.exe 2.59.exe 2.60.exe

2.11-1.exe:$(SRC)2.11-1.c $(LIB)ch2-1.c
	cc $(DEBUG) -o 2.11-1.exe $(SRC)2.11-1.c $(LIB)ch2-1.c -I$(INCLUDE) 

2.11-2.exe:$(SRC)2.11-2.c $(LIB)ch2-2.c
	cc $(DEBUG) -o 2.11-2.exe $(SRC)2.11-2.c $(LIB)ch2-2.c -I$(INCLUDE) 

2.26.exe:$(SRC)2.26.c
	cc $(DEBUG) -o 2.26.exe $(SRC)2.26.c  
2.44.exe:$(SRC)2.44.c
	cc $(DEBUG) -o 2.44.exe $(SRC)2.44.c  
2.55.exe:$(SRC)2.55.c
	cc $(DEBUG) -o 2.55.exe $(SRC)2.55.c -I$(INCLUDE)
2.56.exe:$(SRC)2.56.c
	cc $(DEBUG) -o 2.56.exe $(SRC)2.56.c -I$(INCLUDE)
2.59.exe:$(SRC)2.59.c
	cc $(DEBUG) -o 2.59.exe $(SRC)2.59.c $(LIB)show_bytes.c -I$(INCLUDE) 
2.60.exe:$(SRC)2.60.c
	cc $(DEBUG) -o 2.60.exe $(SRC)2.60.c $(LIB)show_bytes.c -I$(INCLUDE) 
clean:
	rm -f *.exe