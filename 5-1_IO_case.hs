main = do
  hSetBuffering stdin LineBuffering
  putStrLn "Please enter your name: "
  name <- getLine
  case name of
    "Simon" -> putStrLn "Haskell is great!"
    "John" -> putStrLn "Haskell is great!"
    "Phil" -> putStrLn "Haskell is great!"
    "Koen" -> putStrLn "Debugging Haskell is fun!"
    _ -> putStrLn "I don't know who you are..."