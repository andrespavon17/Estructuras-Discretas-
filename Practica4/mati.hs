import Auxiliar

{-
 Función: mayorIgual 
 Descripción: recibe dos matrioskas, las compara y devuelve un booleano: 
    - True si la primera es de mayor o igual tamaño que la segunda; 
    - False si no es verdadero que la primera es de mayor o igual tamaño que la segunda
 Uso 1: mayorIgual Mati Mati = True
 Uso 2: mayorIgual (Cont (Cont Mati)) (Cont (Cont (Cont Mati))) = False
-}

mayorIgual :: Matrioska -> Matrioska -> Bool 
mayorIgual (Cont matrioska) Mati = True 
mayorIgual Mati (Cont matrioska) = False 
mayorIgual Mati Mati = True 
mayorIgual (Cont matrioska1) (Cont matrioska2) = mayorIgual matrioska1 matrioska2 