fib x =
	case x of
		1 -> 1
		2 -> 1
		_ -> (fib (x-2) + fib(x-1))
 
