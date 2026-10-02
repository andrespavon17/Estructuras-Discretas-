{- 
Función reconversion
Descripción: Recibe un valor numérico y le quita tres ceros. 
Uso: reconversion 9000 = 9
-}

reconversion :: Float -> Float
reconversion x = x/1000


{- 
Función cashback
Descripción: Calcula el cashback (10%) del valor de cada gasto de una TDC. 
Uso: cashback 599 = 59.9
-}

cashback :: Float -> Float
cashback x = x * 0.10 


{- 
Función cashbackMonto
Descripción: Calcula el quivalente del cashback en términos de dinero, teniendo en cuenta que cada unidad cashback equivale a 0.10 unidades en dinero. 
Uso: cashbackMonto 59.9 = 5.99
-}

cashbackMonto :: Float -> Float
cashbackMonto x = x * 0.10 


{- 
Función minutosHoras
Descripción: Calcula el equivalente de una cantidad de minutos en términos de horas. 
Uso: minutosHoras 135 = 2 horas y 15 minutos
-}

minutosHoras :: Int -> String 
minutosHoras x = show horas ++ " horas y " ++ show minutos ++ " minutos " 
    where
        (horas, minutos) = x `divMod` 60 


{- 
Función: esEstafa 
Descripción: Dadas cuatro cantidades, el primer billete, el cambio, el segundo billete y el primer billete, evalúa si se ha perdido dinero. 
Uso: 
esEstafa 200 100 200 0
esEstafa True
-}

esEstafa :: Int -> Int -> Int -> Int -> Bool
esEstafa x y z w = if (x - y + z - w) <= 0
then True
else False


{- 
Función: esDescendente 
Descripción: Dados cuatro valores numéricos, evalúa si están en orden descendiente.
Uso: 
esDescendente 5 4 3 2
esDescendente True
-}

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = if x > y && y > z && z > w
then True
else False

{- 
Función: imc 
Descripción: Dados dos valores numéricos (kilogramos y centímetros), devuelve la interpretación de la OMS del índice de masa corporal (bajo, normal, sobrepeso, obesidad). 
Uso: 
imc 65 175 
imc 
-}

imc :: Float -> Float -> String
imc peso alturaCm 
    | valorImc < 18.5 = "Bajo" 
    | valorImc < 25.0 = "Normal" 
    | valorImc < 30.0 = "Sobrepeso" 
    | otherwise = "Obesidad" 
    where
    alturaM = alturaCm / 100
    valorImc = peso / (alturaM ^ 2)