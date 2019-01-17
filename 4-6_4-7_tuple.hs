data Tuple a b c d =  OneElem a
                   |  TwoElem a b
                   |  ThrElem a b c
                   |  FourElem a b c d

tuple1 :: Tuple a b c d -> a
tuple1 (OneElem a) = a   
tuple1 (TwoElem a b) = a   
tuple1 (ThrElem a b c) = a   
tuple1 (FourElem a b c d) = a   

tuple2 :: Tuple a b c d -> Maybe b
tuple2 (OneElem a) = Nothing   
tuple2 (TwoElem a b) = Just b   
tuple2 (ThrElem a b c) = Just b   
tuple2 (FourElem a b c d) = Just b   

tuple3 :: Tuple a b c d -> Maybe c
tuple3 (OneElem a) = Nothing   
tuple3 (TwoElem a b) = Nothing   
tuple3 (ThrElem a b c) = Just c   
tuple3 (FourElem a b c d) = Just c   

tuple4 :: Tuple a b c d -> Maybe d
tuple4 (OneElem a) = Nothing   
tuple4 (TwoElem a b) = Nothing   
tuple4 (ThrElem a b c) = Nothing   
tuple4 (FourElem a b c d) = Just d   

tupleToStd (OneElem a) = Left (Left a)   
tupleToStd (TwoElem a b) = Left (Right (a, b))   
tupleToStd (ThrElem a b c) = Right (Left (a, b, c))  
tupleToStd (FourElem a b c d) = Right (Right (a, b, c, d))   
