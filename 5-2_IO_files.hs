module Main
    where

import System.IO
import Control.Exception

main = do
  hSetBuffering stdin LineBuffering
  doLoop

doLoop = do
  putStrLn "Do you want to [read] a file, [write] a file or [quit]?"
  command <- getLine
  case command of
    "quit" -> do
        putStrLn ("Bye! ")
        return ()
    "read" -> do 
        putStrLn ("Enter a file name to read: ")
        filename <- getLine
        doRead filename
        doLoop
    "write" -> do 
        putStrLn ("Enter a file name to write: ")
        filename <- getLine
        doWrite filename
        doLoop
    _ -> 
        doLoop

doRead filename =
    bracket (openFile filename ReadMode) hClose
            (\h -> do contents <- hGetContents h
                      putStrLn "The first 100 chars:"
                      putStrLn (take 100 contents))

doWrite filename = do
    putStrLn ("Enter text (dot on a line by itself to end): ")
    bracket (openFile filename WriteMode) hClose
            (\input -> do 
                putStrLn "Enter text (dot on a line by itself to end):" 
                doInsertUntilDot input)

doInsertUntilDot oldInput = do
    newInput <- getLine
    if newInput == "."
        then return ()
        else do hPutStrLn oldInput newInput
                doInsertUntilDot oldInput