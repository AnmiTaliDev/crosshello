module Main where

import Lava
import Control.Monad (liftM)

-- Simple Hello World circuit in Lava
helloWorld :: Signal Bool -> Signal Bool
helloWorld input = output
  where
    output = input

-- Test circuit that outputs "Hello, World!" pattern
main :: IO ()
main = do
    putStrLn "Hello, World! (Lava HDL)"
    
    -- Simple circuit simulation
    let testInput = high
    let result = helloWorld testInput
    
    -- In a real Lava program, this would generate hardware
    putStrLn "Lava circuit generated: Hello, World!"