media :: [Double] -> Double
media xs = sum xs / fromIntegral (length xs)

desviacionEstandar :: [Double] -> Double
desviacionEstandar xs = sqrt $ sum [(x - media xs)^2 | x <- xs] / fromIntegral (length xs)

calcularMediaDesviacion :: [Double] -> (Double, Double)
calcularMediaDesviacion muestra = (media muestra, desviacionEstandar muestra)

valoresAtipicos :: [Double] -> [Double]
valoresAtipicos muestra = filter (\x -> abs ((x - media muestra) / desviacionEstandar muestra) > 3) muestra
  where
    media xs = sum xs / fromIntegral (length xs)
    desviacionEstandar xs = sqrt $ sum [(x - media xs)^2 | x <- xs] / fromIntegral (length xs)
