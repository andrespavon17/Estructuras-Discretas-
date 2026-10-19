import ModulosPractica3

{-
Función: cetes
Descripción: Recibe un monto (el inicial), el plazo en días o meses durante el cual el dinero estará invertido, y devuelve el monto final que estará disponible al concluir el plazo seleccionado. 
Uso: 
cetes 100 (Dias 28)
100.47366
cetes 100 (Meses 1)
100.47366
-}

data Tiempo = Dias Float | Meses Float deriving (Show, Eq)

cetes :: Float -> Tiempo -> Float
cetes inicial tiempo =
    if tiempo == Dias 28 || tiempo == Meses 1 
        then inicial * (1 + (0.0609 * (28/360)))
        else if tiempo == Dias 182 || tiempo == Meses 6 
            then inicial * (1 + (0.0691 * (182/360))) 
            else inicial * (1 + (0.0744 * (364/360))) 

{-
Función: mensajeCetes
Descripción: Recibe un monto inicial de inversión, un plazo expresado en días o meses, y devuelve un mensaje que indica: (1) el plazo de la inversión, (2) el rendimiento bruto obtenido, y (3) el monto acumulado al finalizar el plazo
Uso: 
mensajeCetes 100 (Dias 28) 
"Despues de 28.0 dias, tu inversion ha tenido un rendimiento bruto de 0.47366333 pesos. El monto final de la inversion es de 100.47366 pesos."
mensajeCetes 100 (Meses 1) 
"Despues de 1.0 meses, tu inversion ha tenido un rendimiento bruto de 0.47366333 pesos. El monto final de la inversion es de 100.47366 pesos."
-}

mensajeCetes :: Float -> Tiempo -> String 

mensajeCetes inicial (Dias d) = 
    "Despues de " ++ show d ++ " dias, tu inversion ha tenido un rendimiento bruto de " ++ show rendimiento ++ " pesos. El monto final de la inversion es de " ++ show final ++ " pesos."
    where 
        final = cetes inicial (Dias d)
        rendimiento = final - inicial 

mensajeCetes inicial (Meses m) = 
    "Despues de " ++ show m ++ " meses, tu inversion ha tenido un rendimiento bruto de " ++ show rendimiento ++ " pesos. El monto final de la inversion es de " ++ show final ++ " pesos."
    where 
        final = cetes inicial (Meses m)
        rendimiento = final - inicial 

{-
Función: negativos 
Descripción: Recibe una lista y devuelve el total de números negativos que hay en la lista
Uso: 
negativos [-3, -1, 2, 7, -8]
3
-}

negativos :: [Int] -> Int
negativos xs = length [x | x <- xs, x < 0]

{-
Función: soloPares
Descripción: recibe una lista de tipo entero y devuelve una lista con los números de la lista original que son pares
Uso: 
soloPares [1, 2, 3, 4, 5, 6]
[2, 4, 6]
-}

soloPares :: [Int] -> [Int]
soloPares xs = [x | x <- xs, esParBin x]

{-
Función: primos 
Descripción: Recibe una lista y devuelve una lista con los números de la lista original que son primos
Uso: 
primos [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[2, 3, 5, 7]
-}

primos :: [Int] -> [Int]
primos xs = [x | x <- xs, esPrimo x]

{-
Función: coprimos 
Descripción: Recibe un entero y devuelve una lista con sus coprimos
Uso: 
coprimos 10
[1, 3, 7, 9]
-}

coprimos :: Int -> [Int]
coprimos n = [x | x <- [1..n], sonCoprimos x n]