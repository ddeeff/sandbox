
pF n
	| n < 2 = [1]
	| otherwise = pF' n [2..(div n 2)]

pF' n l@(x:xs)
	| n < x*x  = [n]
	| mod n x == 0 = x:(pF' (div n x) l )
	| otherwise = pF' n xs

main = do
	let n = 600851475143
	print (pF n )


