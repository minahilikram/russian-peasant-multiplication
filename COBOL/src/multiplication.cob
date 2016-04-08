identification division.
program-id. multiplication.

data division.

working-storage section.
01 multiplier picture 9(36).
01 multiplicand picture 9(36).
01 answer picture 9(36).

procedure division.
begin.
    display 'multiplier?'.
    accept multiplier.
    display 'multiplicand?'.
    accept multiplicand.
    perform calculation
        with test after
        until multiplier <= 0.
    display answer.

calculation.
    if ((function mod(multiplier, 2)) = 1) then
        add multiplicand to answer
    end-if.
    divide 2 into multiplier.
    multiply 2 by multiplicand.
