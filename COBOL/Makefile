# The compiler
CC = cobc

# Flags that are sent to the compiler
FCFLAGS = -x -free -O -Wall

# directory names here
BINDIR = bin/
SRCDIR = src/

#names of source code file in the lines below.  
SOURCE = $(SRCDIR)multiplication.cob

#names of the executable file in the lines below.  
EXE = $(BINDIR)multiplication

all:
	$(CC) $(FCFLAGS) $(SOURCE) -o $(EXE)

clean:
	@ rm bin/*

run:
	cd bin; ./multiplication
