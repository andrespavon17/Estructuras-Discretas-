{-
Función: cetes
Descripción: Recibe un monto (el inicial), el plazo en días o meses durante el cual el dinero estará invertido, y devuelve el monto final que estará disponible al concluir el plazo seleccionado. 
Uso: 
cetes 100 (Dias 28)
100.4
cetes 100 (Meses 1)
100.4
-}

{-
Tener en cuenta: 
Las tasas de interés bruto anual según el plazo son: 
Dias 28 o Meses 1: 6.09 %
Dias 182 o Meses 6: 6.91 % 
Dias 364 o Meses 12: 7.44 %
-}

data Tiempo = Dias Float | Meses Float deriving (Show, Eq)

cetes :: Float -> Tiempo -> Float
cetes inicial tiempo =
    if tiempo == Dias 28 || tiempo == Meses 1 
        then inicial * (1 + (0.0609 * (28/360)))
        else if tiempo == Dias 182 || tiempo == Meses 6 
            then inicial * (1 + (0.0691 * (182/360))) 
            else inicial * (1 + (0.0744 * (364/360))) 
