
primes = f [2..]
	where
		f (x:xs) = x : f (filter (\y -> mod y x /= 0) xs)

main = do
	print ( take 1 (drop 10000 primes) )


