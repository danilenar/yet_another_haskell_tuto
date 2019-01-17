data BinaryTree a
    = Leaf a
    | Branch (BinaryTree a) a (BinaryTree a)

foldTreeL :: (a -> b -> a) -> a -> BinaryTree b -> a
foldTreeL f i (Leaf x) = f i x
foldTreeL f i (Branch left x right) = foldTreeL f (f (foldTreeL f i left) x) right

elements3 t = foldTreeL (\x y -> x ++ [y]) [] t



