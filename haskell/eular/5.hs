
dividable n = foldl (&&) True ( (\x -> [ mod x y == 0 | y <- [1..20] ] ) n)

main = do
	let l = [ x*(2*3*5*7*11*13*17*19) | x <- [1..] ]
	print (take 1 (filter dividable l))


