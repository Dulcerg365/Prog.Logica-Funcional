import Data.Char (toUpper)

calificar :: [(String, Int)] -> [(String, String)]
calificar registro = map (\(asignatura, nota) -> (map toUpper asignatura, asignarCalificacion nota)) registro
  where
    asignarCalificacion :: Int -> String
    asignarCalificacion nota
      | nota >= 95 = "Excelente"
      | nota >= 85 = "Notable"
      | nota >= 75 = "Bueno"
      | nota >= 70 = "Suficiente"
      | otherwise = "Desempeño insuficiente"

