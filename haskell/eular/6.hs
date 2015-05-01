

main = do
	let sumOfSq = sum [x^2 | x <- [1..100]]
	let sqOfSum = (sum [1..100]) ^ 2

	print sumOfSq
	print sqOfSum
	print (sqOfSum - sumOfSq)



