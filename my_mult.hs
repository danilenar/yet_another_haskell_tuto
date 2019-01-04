my_mult a 1 = a
my_mult a b = a + my_mult a (b-1) 
