module Auxiliar (Natural(..), sumaNat, multiplicaNat) where 
data Natural = Cero | S Natural deriving (Eq, Show) 

{-
Función: sumaNat
Descripción: Calcula el resultado de la suma de dos naturales
Uso: sumaNat Cero (S Cero) = S Cero
Uso2: sumaNat (S (S (S Cero))) (S (S (S (S Cero)))) = (S (S (S (S (S (S (S Cero)))))))
-} 

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero natural = natural 
sumaNat (S natural) matural = sumaNat natural (S matural)

{-
Función: multiplicaNat
Descripción: Calcula el resultado del producto de dos naturales
Uso: multiplicaNat Cero (S Cero) = Cero
Uso2: multiplicaNat (S (S (S Cero))) (S (S Cero)) = 
-} 

multiplicaNat :: Natural -> Natural -> Natural
multiplicaNat Cero natural = Cero 
multiplicaNat natural Cero = Cero 
multiplicaNat (S natural) matural = sumaNat matural (multiplicaNat natural matural) 