{- 
Función reconversion
Descripción: Recibe un valor numérico y le quita tres ceros. 
Uso: 
reconversion 9000 = 9
-}

reconversion :: Float -> Float
reconversion x = x/1000


{- 
Función cashback
Descripción: Calcula el cashback (10%) del valor de cada gasto de una TDC. 
Uso: 
cashback 599 = 59.9
-}

cashback :: Float -> Float
cashback x = x * 0.10 


{- 
Función cashbackMonto
Descripción: Calcula el quivalente del cashback en términos de dinero, 
teniendo en cuenta que cada unidad cashback equivale a 0.10 unidades en dinero. 
Uso: 
cashbackMonto 59.9 = 5.99
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
Descripción: Dadas cuatro cantidades, el precio de un producto, el primer pago, el cambio y el segundo pago, 
evalúa si se ha ganado o perdido dinero para decidir si una estafa tuvo lugar. 
Uso: 
esEstafa 100 200 100 100 = True
-}

esEstafa :: Int -> Int -> Int -> Int -> Bool
esEstafa precio pago1 cambio pago2 = if cobro < precio
then True
else False
    where 
        cobro = pago1 - cambio + pago2 - pago1

{- 
Función: esDescendente 
Descripción: Dados cuatro valores numéricos, evalúa si están en orden descendiente.
Uso: 
esDescendente 5 4 3 2 = True
-}

esDescendente :: Int -> Int -> Int -> Int -> Bool
esDescendente x y z w = if x > y && y > z && z > w
then True
else False

{- 
Función: imc 
Descripción: Dados dos valores numéricos, correspondientes al peso en kilogramos y a la altura en centímetros, 
devuelve la interpretación del índice de masa corporal de la OMS (bajo, normal, sobrepeso, obesidad). 
Uso: 
imc 65 175 = "Normal"
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

{- 
Función: hipotenusa
Descripción: Dados dos valores numéricos, correspondientes a la base y a la altura de un triángulo, 
devuelve un valor correspondiente a la hipotenusa. 
Uso: 
hipotenusa 3 4 = 5.0
-}

hipotenusa :: Float -> Float -> Float
hipotenusa base altura = sqrt(base^2 + altura^2)

{- 
Función: pendiente
Descripción: Dadas dos tuplas, cada una de dos valores numéricos, correspondientes a dos puntos en el plano cartesiano, 
devuelve un valor numérico correspondiente a la pendiente de la recta que pasa por los dos puntos.  
Uso: 
pendiente (2, 1) (-2, -1) = 0.5
-}

pendiente :: (Float, Float) -> (Float, Float) -> Float 
pendiente (x1, y1) (x2, y2) = pen
    where 
        p1 = y2 - y1 
        p2 = x2 - x1
        pen = p1 / p2

{- 
Función: distanciaPuntos
Descripción: Dadas dos tuplas, cada una de dos valores numéricos, correspondientes a dos puntos en el plano cartesiano, 
devuelve un valor numérico corresponddiente a la distancia entre los puntos. 
Uso: 
distanciaPuntos (2, 3) (4, 5) = 2.828427
-}

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1, y1) (x2, y2) = dis
    where 
        p1 = x2 - x1 
        p2 = y2 - y1
        dis = sqrt((p1)^2 + (p2)^2) 