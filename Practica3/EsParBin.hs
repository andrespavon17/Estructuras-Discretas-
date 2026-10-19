module EsParBin (esParBin) where 
import Data.Bits 

{-
Función: esParBin
Descripción: Verifica si un número binario es par y devuelve un valor de verdad. 
Uso: esParBin 28 = True
-}

esParBin :: Int -> Bool
esParBin n = (n.&.1) == 0 