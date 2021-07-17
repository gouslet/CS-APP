DEBUG := -g
CFLAGS := -IE:\DIY\CS-APP\code
all: $(subst .c,.exe,$(wildcard *.c))

restart.exe: restart.c
	cc $(DEBUG) -o $@  $< $(CFLAGS)

