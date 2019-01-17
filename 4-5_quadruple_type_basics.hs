data Quadruple a b = Quadruple a a b b

quadrupleFstTwo :: Quadruple a b   -> [a] 
quadrupleFstTwo (Quadruple v x y z) = [v, x]
quadrupleLastTwo :: Quadruple a b  -> [b] 
quadrupleLastTwo (Quadruple v x y z) = [y, z]