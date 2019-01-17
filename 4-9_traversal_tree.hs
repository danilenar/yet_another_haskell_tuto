data BinaryTree a
    = Leaf a
    | Branch (BinaryTree a) a (BinaryTree a)

treeSize (Leaf x) = 1
treeSize (Branch left x right) = 1 + treeSize left + treeSize right

inOrder (Leaf x) = [x]
inOrder (Branch left x right) = inOrder left ++ [x] ++ inOrder right

preOrder (Leaf x) = [x]
preOrder (Branch left x right) = [x] ++ preOrder left ++ preOrder right 

posOrder (Leaf x) = [x]
posOrder (Branch left x right) = posOrder left ++ posOrder right ++ [x]