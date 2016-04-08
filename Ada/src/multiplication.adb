with ada.text_io; use ada.text_io;

procedure multiplication is

    type unsigned is range 0 .. 2**62;
    package unsigned_io is new ada.text_io.integer_io(unsigned);
    use unsigned_io;
    multiplier, multiplicand : unsigned;
    
    function recursive(multiplier: unsigned; multiplicand: unsigned) return unsigned is
        answer : unsigned := 0;
    begin
        if (multiplier = 0) then
            answer := 0;
        elsif (multiplier = 1) then
            answer := multiplicand;
        elsif ((multiplier > 1) and ((multiplier mod 2) = 0)) then
            answer := recursive((multiplier/2), (multiplicand*2));
        elsif ((multiplier > 1) and ((multiplier mod 2) = 1)) then
            answer := (multiplicand + (recursive((multiplier/2), (multiplicand*2))));
        end if;
        return answer;
    end recursive;
    
    function iterative(multiplier: in out unsigned; multiplicand: in out unsigned) return unsigned is
        answer : unsigned := 0;
    begin
        while (multiplier > 0) loop
            if ((multiplier mod 2) = 1) then
                answer := (multiplicand + answer);
            end if;
            multiplier := multiplier/2;
            multiplicand := multiplicand*2;
        end loop;
        
        return answer;
    end iterative;
begin
    
    put_line("multiplier?");
    unsigned_io.get(multiplier);

    put_line("multiplicand?");
    unsigned_io.get(multiplicand);
    
    unsigned_io.put(recursive(multiplier, multiplicand));
    new_line;
    unsigned_io.put(iterative(multiplier, multiplicand));
	
end multiplication;
