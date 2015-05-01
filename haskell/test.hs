
fact :: Integer -> Integer
fact 0 = 1
fact x = x*fact (x-1)

twice :: Integer -> Integer
twice x = x^x

dist :: Double -> Double -> Double -> Double
dist v a t = 0.5 * a * t + v * t

main = do 
	putStrLn "Hello"
	print (fact 3)
	print (map twice [1,2,3])
	print (sum (map twice [1,2,3]) )
	print (sum (map (\x -> x^4) [1,2,3]) )
	print pi
	print (dist 1 1 10)

