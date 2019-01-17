main = do
  hSetBuffering stdin LineBuffering
  putStrLn "Please enter your name:"
  name <- getLine
  putStrLn
    (if name `elem` ["Simon", "John", "Phil"]
       then "Haskell is great!"
       else if name == "Koen"
              then "Debugging Haskell is fun!"
              else "I don't know who you are.")