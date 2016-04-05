package multiplication_io is

    type unsigned is range 0 .. 2**62;

	function recursive(multiplier: unsigned; multiplicand: unsigned) return unsigned;

    function iterative(multiplier: in out unsigned; multiplicand: in out unsigned) return unsigned;

end multiplication_io;
