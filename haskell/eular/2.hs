fib n  
	| n < 1 = 0
	| n == 1 = 1
	| otherwise = fib' n [1,1]

fib' n l@(x1:x2:_)
	| length l >= n = x1
	| length l < 2 = fib' n [1,1]
	| otherwise = fib' n (x1+x2:l)

main = do
	print (sum ( filter (\x -> even x) ( takeWhile (\x -> x < 4000000) ( map fib [1..] ) ) ) )



