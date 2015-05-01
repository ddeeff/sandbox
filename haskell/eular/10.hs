primes = f [2..]
	where
		f (x:xs) = x : f (filter (\y -> mod y x /= 0 ) xs)

main = do
	print ( sum (takeWhile (\x -> x <= 2000000) primes) )


