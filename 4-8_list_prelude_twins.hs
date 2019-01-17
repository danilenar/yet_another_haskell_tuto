data List a = Nil
            | Cons a (List a)

listHead Nil = Nothing
listHead (Cons x cont) = Just x

listTail Nil = Nothing
listTail x = Nothing
listTail (Cons x cont) = Just cont

listFoldl f y Nil = y
listFoldl f y (Cons x cont) = listFoldl f (f y x) cont

listFoldr f y Nil = y
listFoldr f y (Cons x cont) = f y (listFoldr f x cont)
