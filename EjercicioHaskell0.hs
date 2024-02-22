
sumarLista :: [Int] -> Int
sumarLista lista = sum lista

factorial :: Int -> Int 
factorial n
            | n == 0 = 1
            | otherwise = n * factorial (n-1)

numerosPares :: Int -> [Int]
numerosPares numero = [x | x <- [0..numero], even x]

longitudCadena :: String -> Int
longitudCadena cadena = length(cadena)

reversoLista :: [a] -> [a]
reversoLista [] = []  
reversoLista (x:xs) = reversoLista xs ++ [x] 

duplicarElementos :: [Int] -> [Int]
duplicarElementos [] = [] 
duplicarElementos (x:xs) = (x * 2) : duplicarElementos xs 

filtrarPares :: [Int] -> [Int]
filtrarPares pares = [x | x <- pares, even x]

fibonacci :: Int -> Int
fibonacci n 
            | n == 0 = 0
            | n == 1 = 1
            | otherwise = fibonacci (n-1) + fibonacci (n-2)

divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `rem` x == 0]

esPalindromo :: String -> Bool
esPalindromo cadena 
                |cadena == reverse cadena = True
                |otherwise = False 