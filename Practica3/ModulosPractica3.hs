module ModulosPractica3 (esParBin, esPrimo) where 
import Data.Bits 

{-
Función: esParBin
Descripción: Verifica si un número binario es par y devuelve un valor de verdad. 
Uso: esParBin 28 = True
-}

esParBin :: Int -> Bool
esParBin n = (n.&.1) == 0 

{-
Función: divisores
Descripción: Recibe un entero y devuelve todos sus divisores positivos. 
Uso: 
divisores 7
[1, 7]
-}

divisores :: Int -> [Int]
divisores n = [d | d <- [1..n], n `mod` d == 0]

{-
Función: esPrimo
Descripción: Recibe un número, verifica si es un número es primo, y devuelve un booleano.
Uso: 
esPrimo 7 
True
-}

esPrimo :: Int -> Bool
esPrimo n = divisores n == [1, n]