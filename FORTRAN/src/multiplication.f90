program multiplication

    integer(kind = 8) :: multiplier, multiplicand, rcursvmultply, itratvmultply

    write(*,*) "multiplier?"
    read(*,*) multiplier

    write(*,*) "multiplicand?"
    read(*,*) multiplicand
    
    write(*,*) rcursvmultply(multiplier, multiplicand)
    
    write(*,*) itratvmultply(multiplier, multiplicand)
end program

recursive function rcursvmultply(multiplier, multiplicand) result(answer)
    
    integer(kind = 8), intent(in) :: multiplier, multiplicand
    integer(kind = 8) :: answer
    
    if (multiplier == 0) then
        answer = 0
    else if (multiplier == 1) then
        answer = multiplicand
    else if ((multiplier > 1) .and. (mod(multiplier, 2) == 0)) then
        answer = rcursvmultply((multiplier/2), (multiplicand*2))
    else if ((multiplier > 1) .and. (mod(multiplier, 2) == 1)) then
        answer = (multiplicand + (rcursvmultply((multiplier/2), (multiplicand*2))))
    end if
end function rcursvmultply

integer(kind = 8) function itratvmultply(multiplier, multiplicand)
    
    integer(kind = 8) :: multiplier, multiplicand
    
    do while (multiplier > 0)
        if ((mod(multiplier, 2)) == 1) then
            itratvmultply = (multiplicand + itratvmultply)
        end if
        multiplier = multiplier/2
        multiplicand = multiplicand*2
    end do
end function itratvmultply
