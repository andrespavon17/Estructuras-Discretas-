{- Función reconversion
Descripción: Recibe un valor numérico y le quita tres ceros. 
Uso: reconversion 9000 = 9
-}

reconversion :: Float -> Float
reconversion x = x/1000

{- Función cashback
Descripción: Calcula el cashback (10%) del valor de cada gasto de una TDC. 
Uso: cashback 599 = 59.9
-}

cashback :: Float -> Float
cashback x = x * 0.10 

{- Función cashbackMonto
Descripción: Calcula el quivalente del cashback en términos de dinero, teniendo en cuenta que cada unidad cashback equivale a 0.10 unidades en dinero. 
Uso: cashbackMonto 59.9 = 5.99
-}

cashbackMonto :: Float -> Float
cashbackMonto x = x * 0.10 

{- Función minutosHoras
Descripción: Calcula el equivalente de una cantidad de minutos en términos de horas, teniendo en cuenta que cada hora tiene 60 minutos. 
Uso: minutosHoras ? = ?
-}

minutosHoras :: Int -> Int 
minutosHoras x = x `div` 60 

