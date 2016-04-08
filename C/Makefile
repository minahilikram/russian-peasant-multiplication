CC          =	gcc
# Flags that are sent to the compiler

CFLAGS      =	-Wall

#Directories where the compiler can find things
INCLUDES    = -Iinclude

BINDIR = bin/
SRCDIR = src/

SOURCE = $(SRCDIR)multiplication.c

OBJS    = multiplication.o

#The names of the binary programs that will be produced.  
PROGNAME = $(BINDIR)multiplication


default : link

link: compile
	$(CC) -o $(PROGNAME) $(OBJS)

compile: 
	$(CC) $(CFLAGS) -c $(SOURCE) $(INCLUDES)

clean:
	@ rm *.o
	@ rm bin/multiplication

run:
	cd bin; ./multiplication
