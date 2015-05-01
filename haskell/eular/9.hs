
combo (x:xs) (y:ys) (z:zs)
	| xs == [] && ys == [] = [(x, y, r)]
	| ys == [] = (x, y, r) : combo xs zs zs
	| r < 0 = combo (x:xs) ys (z:zs)
	| otherwise = (x, y, r) : combo (x:xs) ys (z:zs)
	where
		r = 1000-x-y

main = do
	let l = [1..999]
	let muls = combo l l l
	let pytha = filter (\(x, y, z) -> x^2 + y^2 == z^2) muls
	let answer = map (\(x, y, z) -> x*y*z) pytha
	print answer



