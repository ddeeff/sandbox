
reversible :: Eq n => [n] -> Bool
reversible n
	| length n < 2 = True
	| otherwise = head n == last n  && reversible ( (tail.init) n)

main = do
	let l = filter reversible (map show [ x*y | x <- [100..999], y <- [100..999] ] )
	let lNum = map (\x -> read x :: Int) l
	print (maximum lNum)


