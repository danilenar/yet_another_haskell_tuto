module Main
        where

import System.IO

main = do
    hSetBuffering stdin LineBuffering
    list <- inputIntList
    let sum = foldl (+) 0 list
    let mult = foldl (*) 1 list
    putStrLn ("The sum is "++show(sum))
    putStrLn ("The product is "++show(mult))
    --putStrLn(show(head list)++" factorial is "++show(factorial(head list)))
    printFactorial list

inputIntList = do
    putStrLn "Enter a number (0 to stop):"
    input <- getLine
    let intValue = read input
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