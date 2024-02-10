moduleVector :: [Float] -> Float
moduleVector v = sqrt (sum [x * x | x <- v])