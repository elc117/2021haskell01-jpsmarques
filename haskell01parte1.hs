-- Prática 01 de Haskell - Parte 1
-- Nome: João Prdro da Silva Marques

--1
sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2

--2
circleArea :: Float -> Float
circleArea r = pi * r^2

--3
age :: Int -> Int -> Int
age x y = y-x

--4
isElderly :: Int -> Bool
isElderly x = if x > 65 then True else False

--5
htmlItem :: String -> String
htmlItem s = "<li>"++ s++ "</li>"

--6
startsWithA :: String -> Bool
startsWithA lis = if head lis == 'A' then True else False

--7
isVerb :: String -> Bool
isVerb lis = if last lis == 'r' then True else False

--8
isVowel :: Char -> Bool
isVowel c = elem c "aeiou"

--9
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = if head x == head y then True else False

--10
isVowel2 :: Char -> Bool
isVowel2 c = elem c "aeiouAEIOU"