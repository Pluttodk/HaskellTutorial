--Q22.1 Equation solver

delimeter :: String -> Double -> Double -> Double
delimeter "+" = (+)
delimeter "*" = (*)
delimeter "-" = (-)
delimeter "/" = (/)

solveEquation :: [String] -> Double
solveEquation [] = 0.0
solveEquation [a,op,b] = delimeter op (read a) (read b)
solveEquation (a:op:b:tail) = (solveEquation (firsthalf:tail))
    where firsthalf = show (delimeter op (read a) (read b))

main :: IO ()
main = do
    equations <- getContents
    let results = map words (lines equations)
    print results
    let math = map solveEquation results
    mapM_ print math