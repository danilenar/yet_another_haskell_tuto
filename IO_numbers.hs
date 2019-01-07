module Main
        where

import System.IO

main = do
    hSetBuffering stdin LineBuffering
    list <- inputIntList
    putStrLn ("The sum is "++show(sum list))
    putStrLn ("The product is "++show(product list))
    printFactorial list

inputIntList = do
    putStrLn "Enter a number (0 to stop):"
    input <- getLine
    let intValue = read input :: Int
    if intValue == 0
        then return []
        else do
            rest <- inputIntList
            return (intValue : rest)

factorial 1 = 1
factorial n = n * factorial (n-1)

printFactorial [] = do return () 
printFactorial (x:rest) = do
    putStrLn(show(x)++" factorial is "++show(factorial(x)))
    printFactorial rest