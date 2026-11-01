import Auxiliar 

{-
 Función: multiEnt
 Descripción: Recibe dos enteros y devuelve el producto de ellos
 Uso: multiEnt (Neg (Succ (Succ (Succ (Succ Zero))))) (Succ (Succ Zero)) = 
    Neg (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))
-} 

multiEnt :: Entero -> Entero -> Entero
multiEnt Zero emtero = Zero 
multiEnt entero Zero = Zero 
multiEnt (Succ entero) emtero = sumaEnt emtero (multiEnt entero emtero)
multiEnt (Neg entero) (Neg emtero) = multiEnt entero emtero
multiEnt (Neg entero) emtero = Neg (multiEnt entero emtero)