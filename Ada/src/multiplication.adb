with ada.text_io; use ada.text_io;
with multiplication_io; use multiplication_io;

procedure multiplication is

    package unsigned_io is new ada.text_io.integer_io(unsigned);
    use unsigned_io;
    multiplier, multiplicand : unsigned;
begin
    
    put_line("multiplier?");
    unsigned_io.get(multiplier);

    put_line("multiplicand?");
    unsigned_io.get(multiplicand);
    
    unsigned_io.put(recursive(multiplier, multiplicand));
    new_line;
    unsigned_io.put(iterative(multiplier, multiplicand));
	
end multiplication;
