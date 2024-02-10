aplicarDescuento :: Float -> Float -> Float
aplicarDescuento precio descuento = precio - ((precio/100)*descuento)

aplicarIva :: Float -> Float -> Float 
aplicarIva precio iva = precio + ((precio/100)*iva)

funcionFinal :: [(Float, Float)] -> (Float -> Float -> Float) -> Float
funcionFinal preciosPorcentajes funcionAplicadora = sum $ map (\(precio, porcentaje) -> funcionAplicadora precio porcentaje) preciosPorcentajes



