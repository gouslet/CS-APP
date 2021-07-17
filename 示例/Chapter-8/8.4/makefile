DEBUG := -g
CFLAGS := -IE:\DIY\CS-APP\code
all: $(subst .c,.exe,$(wildcard *.c))

fork_1.exe: fork_1.c
	cc $(DEBUG) -o $@  $< $(CFLAGS)

