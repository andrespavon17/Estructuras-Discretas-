data Natural = Cero | S Natural deriving (Eq, Show) 

{-
Función: a_natural
Descripción: toma un entero y lo lleva a la estructura de datos `Natural`
Uso: 
a_natural 0 = Cero
a_natural 2 = S (S Cero)
-}

a_natural :: Int -> Natural  
a_natural 0 = Cero 
a_natural n 
    | n > 0 = S (a_natural (n - 1))
    | otherwise = error "El valor introducido no es un número natural" 

{-
Función: a_entero
Descripción: toma un dato `natural` y lo lleva a su valor entero
Uso: 
a_entero Cero = 0
a_entero (S (S (S Cero))) = 3
-}

a_entero :: Natural -> Int  
a_entero Cero = 0
a_entero (S natural) = 1 + (a_entero (natural))