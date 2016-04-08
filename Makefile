# Compilers
GNAT        =   gnatmake
CC          =	gcc
COB         =   cobc
FC          =   gfortran

# Flags that are sent to the compiler
CFLAGS      =	-Wall

# directory names here
BINDIR      =   bin/
SRCDIR      =   src/

#names of source code file in the lines below.  
SOURCE      =   $(SRCDIR)multiplication

#The names of the binary programs that will be produced.
PROGNAME    =   $(BINDIR)implementation

default: all

all: implementation-ada implementation-c implementation-cobol implementation-fortran implementation-python

implementation-ada:
	$(GNAT) $(CFLAGS) $(SOURCE).adb -o $(PROGNAME)-ada
	
implementation-c: 
	$(CC) $(CFLAGS) $(SOURCE).c -o $(PROGNAME)-c
	
implementation-cobol: 
	$(COB) -x -free -O $(FCFLAGS) $(SOURCE).cob -o $(PROGNAME)-cobol
	
implementation-fortran: 
	$(FC) $(FCFLAGS) $(SOURCE).f90 -o $(PROGNAME)-fortran
	
implementation-python: 
	chmod +x $(SOURCE).py 

clean:
	@ rm *.o
	@ rm *.ali
	@ rm bin/*
	
run-implementation-ada:
	cd bin; ./implementation-ada
	
run-implementation-c:
	cd bin; ./implementation-c
	
run-implementation-cobol:
	cd bin; ./implementation-cobol
	
run-implementation-fortran:
	cd bin; ./implementation-fortran
	
run-implementation-python:
	cd src; ./multiplication.py
