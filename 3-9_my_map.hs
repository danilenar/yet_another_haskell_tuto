my_map f [] = []
my_map f (x:y) = f x : my_map f y
