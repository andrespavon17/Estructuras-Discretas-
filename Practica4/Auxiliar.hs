module Auxiliar where 
data Natural = Cero | S Natural deriving (Eq, Show) 
data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

-- AUXILIARES PARA NATURALES

{-
 Función: sumaNat
 Descripción: Calcula el resultado de la suma de dos naturales
 Uso 1: sumaNat Cero (S Cero) = S Cero
 Uso 2: sumaNat (S (S (S Cero))) (S (S (S (S Cero)))) = (S (S (S (S (S (S (S Cero)))))))
-} 

sumaNat :: Natural -> Natural -> Natural
sumaNat Cero natural = natural 
sumaNat (S natural) matural = sumaNat natural (S matural)

{-
 Función: multiplicaNat
 Descripción: Calcula el resultado del producto de dos naturales
 Uso 1: multiplicaNat Cero (S Cero) = Cero
 Uso 2: multiplicaNat (S (S (S Cero))) (S (S Cero)) = 
-} 

multiplicaNat :: Natural -> Natural -> Natural
multiplicaNat Cero natural = Cero 
multiplicaNat (S natural) matural = sumaNat matural (multiplicaNat natural matural) 

-- AUXILIARES PARA ENTEROS

{-
 Función: sumaEnt
 Descripción: Recibe dos enteros y devuelve la suma de ellos 
 Uso 1: sumaEnt (Succ (Succ (Succ Zero))) (Neg (Succ (Succ Zero))) = Succ Zero
 Uso 2: sumaEnt (Neg (Succ (Succ (Succ Zero)))) (Neg (Succ (Succ Zero))) = Neg (Succ (Succ (Succ (Succ (Succ Zero))))) 
-}

sumaEnt :: Entero -> Entero -> Entero

-- Casos Base 
sumaEnt Zero emtero = emtero
sumaEnt entero Zero = entero

-- Casos Recursivos
sumaEnt (Succ entero) (Succ emtero) = Succ (sumaEnt entero (Succ emtero))
sumaEnt (Neg entero) (Neg emtero) = Neg (sumaEnt entero emtero)
sumaEnt (Succ entero) (Neg emtero) =  restaEnt (Succ entero) emtero
sumaEnt (Neg entero) (Succ emtero) = restaEnt (Succ emtero) entero


{-
 Función: restaEnt
 Descripción: Recibe dos enteros y devuelve la resta de ellos
 Uso 1:
 Uso 2: 
-}

restaEnt :: Entero -> Entero -> Entero

-- Casos Base
restaEnt entero Zero = entero
restaEnt Zero (Succ emtero) = Neg (Succ emtero)

-- Casos Recursivos
restaEnt (Succ entero) (Succ emtero) = restaEnt entero emtero
restaEnt (Neg entero) (Neg emtero) = restaEnt emtero entero
restaEnt entero (Neg emtero) = sumaEnt entero emtero
restaEnt (Neg entero) emtero = Neg (sumaEnt entero emtero)
