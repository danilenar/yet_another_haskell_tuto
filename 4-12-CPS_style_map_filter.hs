map' :: (a -> [b] -> [b]) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x (map' f xs)

map2 :: (a -> b) -> [a] -> [b]
map2 f l = map' (\x y -> f x : y) l

map2 f = map' (\x y -> (:) (f x) y)
map2 f = map' (\x -> (:) (f x))
map2 f = map' (\x -> ((:) . f) x)
map2 f = map' ((:) . f)

filter' :: (a -> [b] -> [b]) -> [a] -> [b]
filter' f [] = []
filter' f (x:xs) = f x  (filter' f xs)

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 f l = filter' (\x y -> if (f x) then x:y else y) l