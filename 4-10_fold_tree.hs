data BinaryTree a
    = Leaf a
    | Branch (BinaryTree a) a (BinaryTree a)

foldTreeR :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTreeR f i (Leaf x) = f x i
foldTreeR f i (Branch left x right) = foldTreeR f (f x (foldTreeR f i right)) left

elements2 = foldTreeR (:) []