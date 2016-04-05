# The compiler
FC    =    gfortran

# Flags that are sent to the compiler
FCFLAGS    =    -Wall

all:
	gfortran $(FCFLAGS) src/multiplication.f90 -o bin/multiplication

clean:
	@ rm bin/*

run:
	cd bin; ./multiplication
