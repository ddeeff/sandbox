import Data.Char

degit :: Int -> Int
degit = length . show

square :: Num a => a -> a
square = (^ 2)

ultimate ::  Int -> String
ultimate 42 = "The Answer for all things"
ultimate n = show n

maybeToList :: Maybe a -> [a]
maybeToList Nothing = []
maybeToList (Just a) = [a]

listToMaybe :: [a] -> Maybe a
listToMaybe [] = Nothing
listToMaybe (a:as) = Just a

deeping :: String -> String
deeping s@(' ':' ':_) = "  "++s
deeping s@(' ':_) = " "++s
deeping s = s

badFunc :: Int -> Int
badFunc 1 = 1
badFunc a = a

fib :: Int -> Int
fib n
	| n == 0 = 0
	| n == 1 = 1
	| n > 0 = fib (n-2) + fib (n-1)
	| n < 0 = 0

fibCase :: Int -> Int
fibCase n = case n of
	0 -> 0
	1 -> 1
	_ | n > 0 -> fib (n-1) + fib (n-2)

take' :: Int -> [a] -> [a]
take' n _ | n < 1 = []
take' n (x:xs) = x : (take' (n-1) xs)

drop' :: Int -> [a] -> [a]
drop' n l | n < 1 = l
drop' n (_:ls) = drop' (n-1) ls

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

sum' :: Num a => [a] -> a
sum' [] = 0
sum' (x:xs) = sum' xs + x

product' :: Num a => [a] -> a
product' [] = 1
product' (x:xs) = x * product' xs

fact' :: Int -> Int
fact' 0 = 1
fact' n = product' [1..n]

rot13 :: String -> String
rot13 str = map ( chr . (\x -> x+13) . ord ) str

insertSort [] = []
insertSort (x:xs) = iSort x (insertSort xs)

iSort n [] = [n]
iSort n (x:xs) 
	| n > x = x: iSort n xs
	| otherwise = n:x:xs

qsort []     = []
qsort (n:xs) = qsort lt ++ [n] ++ qsort gteq
    where
		lt   = [x | x <- xs, x <  n]
		gteq = [x | x <- xs, x >= n]

sankaku (x:y:z:_)
	| x^2 + y^2 == z^2 = [x, y, z]
	| otherwise = []
sankaku (a:as) = []
sankaku [] = []

--prime :: Num n => n -> Bool
prime n
	| n <= 1 = (n, False)
	| n <= 3 = (n, True)
	| otherwise = (n, all (\x -> mod n x /= 0) [2..n-1] )

ttt l@(x:xs)
	| l == [] = []
	| xs == [] = []
	| mod x 2 == 0 = x^3:ttt xs
	| otherwise = x:ttt xs 


