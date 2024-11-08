-- Write printAMessage here

printAMessage :: Show a => a -> IO ()
printAMessage x = print x

-- Write division here


division :: Double -> Double -> Maybe Double
division _ 0 = Nothing
division x y = Just(x/y)  

-- Write factorial here

factorial :: Int -> Int
factorial 0 = 1 
factorial 1 = 1 
factorial n = n * factorial (n - 1) 

-- Write factList here

factList :: Int -> [Int]
factList n = [factorial i | i <- [1..n]]

-- Write merge here
merge :: [Int] -> [Int] -> [Int]
merge [] ls2 = ls2
merge ls1 [] = ls1
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys  

main :: IO ()
main = do
    printAMessage("Test printAMessage")
    print (division 10 2) 
    print (division 10 0)  
    print (division 5 2)  
    print (factorial 5)      
    print (factList 5)
    print (merge [1, 3, 5] [2, 4, 6])
    print (merge [-1,-2,-3] [1,2,3])