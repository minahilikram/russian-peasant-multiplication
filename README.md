# russian-peasant-multiplication

[Russian Peasant Multiplication](http://mathworld.wolfram.com/RussianMultiplication.html) recursive and iterative implementation based on Ada, C, COBOL, FORTRAN and Python Algorithms for complexity comparison.

> “Russian-peasant” multiplication (it was actually used as early as 1800BC by Egyptian
mathematicians) is an algorithm for performing multiplication by repeated halving, doubling, and
additions. It is well-suited to multiplications of large numbers, such as numbers whose product
has up to twice as many digits as the calculator's normal word size.

## Install

```sh
$ git clone https://github.com/minahilikram/russian-peasant-multiplication
```

## Usage

```sh
$ cd russian-peasant-multiplication/
# (compiles all programs)
$ make
$ make run-implementation-* (replace * with the name of the lanaguage to run)
```

## Limitations

For a complete list of limitations, see [docs/analysis.md](https://github.com/minahilikram/russian-peasant-multiplication/blob/master/docs/analysis.md).
