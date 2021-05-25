-- Prática 01 de Haskell - Parte 2
-- Nome: João Pedro da Silva Marques 


-- Funções de apoio
htmlItem :: String -> String
htmlItem s = "<li>"++ s++ "</li>"

isVowel :: Char -> Bool
isVowel c = elem c "aeiou"

isElderly :: Int -> Bool
isElderly x = if x > 65 then True else False

isLongWord :: String -> Bool
isLongWord s = length s > 10

isEvenBetter  :: Int -> Bool
isEvenBetter n = mod n 2 == 0

-- 1
itemize :: [String] -> [String]
itemize string = map htmlItem string

--2
onlyVowels :: String -> String
onlyVowels string = filter isVowel string

--3 
nlyElderly :: [Int] -> [Int]
nlyElderly x = filter isElderly x 

--4
onlyLongWords :: [String] -> [String]
onlyLongWords str = filter isLongWord str

--5
onlyEven :: [Int] -> [Int]
onlyEven x = filter isEvenBetter x

--6
between60and80 :: Int -> Bool
between60and80 x = if x > 60 && x < 80 then True else False

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter between60and80 x

--7
isSpace :: Char -> Bool
isSpace c = if c == ' ' then True else False

--countSpaces :: String -> Int
--countSpaces string =  isSpace string

--8
circleArea :: Float -> Float
circleArea r = pi * r^2

calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x


--9
charFound :: Char -> String -> Bool
charFound c string = if c == (head string) then True else False 