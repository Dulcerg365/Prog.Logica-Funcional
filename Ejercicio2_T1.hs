aplicaFuncionLista :: (Int -> Int) -> [Int] -> [Int]
aplicaFuncionLista _ [] = []
aplicaFuncionLista f (x:xs) = f x : aplicaFuncionLista f xs

calcularCubo :: Num Int => Int -> Int
calcularCubo n = n * n * n