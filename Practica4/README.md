# Práctica 4: *Números naturales y recursión*

## **Objetivos:**

- Familiarizarse con las estructuras de datos: 
    - `Natural`
    - `Entero`
    - `Matrioska`

con el propósito de comprender su naturaleza: cómo se genera recursivamente un conjunto a partir de los elementos minimales, en cada caso. 

- Definir funciones sobre los datos de cada una de estas estructuras, para conocer la manera en que se modela con un lenguaje de programación operaciones que llevamos a cabo de manera intuitiva en la experiencia cotidiana. 

- Obtener conocimientos y experiencia para el desarrollo de código *Haskell*. 

- Comprender el fenómeno de la recursión estructural por medio de ejemplos intuitivos y, en particular, con el análisis de una canción popular (*Sal de ahí, chivita, chivita*).

## **Tiempo requerido para llevar a cabo la práctica:** 

14 horas, aproximadamente. 

## **Ejercicio favorito:** 

En esta práctica, mi ejercicio favorito fue la definición de la función `facNat`, pues, para hacerlo, tuve que investigar sobre la *función factorial* y su definición matemática, aprendiendo así la relación que hay entre las propiedades algebraicas de las funciones y su definición como funciones recursivas en un lenguaje de programación como *Haskell*. 

(*Además, haciéndola, creí poder **intuir** las formas matemáticas (¡ja, ja!)*). 

(*En general, la práctica fue muy interesante e, incluso, divertida.*)

## **Comentarios:** 

En esta práctica aprendí a evitar algunos errores comunes de la sintaxis del código *Haskell*, como el uso de los paréntesis para agrupar expresiones, y, más aun, conocí la importancia del orden del establecimiento de los casos de una función recursiva. 

Así, por ejemplo, al definir la función `multiEnt`, tenía, en un principio, el caso `multiEnt (Neg entero) (Neg emtero) = multiEnt entero emtero` (i.e., multiplicación de dos enteros negativos) como el último de los casos. 
Haskell evalúa las cláusulas en un orden estricto de arriba a abajo, y los patrones de las cláusulas de izquierda a derecha; así que, al usar la función con dos enteros negativos, y estando la cláusula para dos negativos al final de todas, el compilador interactivo no llegaba nunca a llamarla. 
Pues antes evaluaba `multiEnt (Neg entero) emtero = Neg (multiEnt entero emtero)`, porque el patrón de esta cláusula coincide con el constructor `Neg` del primer argumento, y trataba la operación como una multiplicación de un entero negativo y un entero cualquiera (ya que tomaba la segunda variable como una variable libre), resultando en un error de cálculo. 
Aprendí, entonces, que se debe colocar los casos más específicos o especiales (como aquellos en que ambos argumentos tienen un constructor) antes que los casos generales (como aquellos en que los argumentos son variables libres sin restricciones). 

## Analizando el archivo `enteros.hs`, y, en comparación con el archivo `entero.hs`, se da una respuesta a las siguientes preguntas: 

1. **¿Cuál es la diferencia entre las operaciones implementadas en cada archivo? ¿Cómo se manejan todos los casos en cada implementación?**

En principio, las operaciones implementadas en cada archivo difieren en la definición de las cláusulas que definen cada función. 
Así, por ejemplo, para la definición de una de las cláusulas de la función `restaEnt` del archivo `enteros.hs`, se usa la función auxiliar `mayorEnt` (como se señala en la siguiente pregunta y su respuesta). 
Esto tiene como consecuencia que la evaluación que *Haskell* hace de los patrones en las cláusulas sea distinta en cada uno de los archivos. 

Ahora bien, las operaciones implementadas en `entero.hs` confunden las leyes de los signos y las relaciones de orden de los enteros, así que no cubren todos los casos. 
En particular, no hay patrón alguno en las cláusulas de `resta_ent` para tratar la resta de un negativo y un positivo (i.e. $(-n)-m$) y, por tanto, el compilador interactivo arroja una excepción en tiempo de ejecución por patrones no exhaustivos. 

Además, algunas operaciones como $(-a) - (-b)$ (que entran en el patrón `resta_ent (Neg n) (Neg m) = resta_ent n m`) resultan en errores de cálculo aritmético.

Si, por ejemplo, se usa la función con `resta_ent (Neg (Succ Zero)) (Neg (Succ (Succ Zero)))`, el compilador quita los signos de negación, y evalúa `resta_ent (Succ Zero) (Succ (Succ Zero))`, de manera que devuelve: `Neg (Succ Zero)`, y no: `Succ Zero`, como debería. 

2. **¿Por qué se tiene implementada la operación `mayorEnt` en el archivo `enteros.hs`?**

En el archivo `enteros.hs`, se tiene implementada la operación `mayorEnt` porque es una función auxiliar que tiene lugar en una de las cláusulas de la función `restaEnt`, en particular la cláusula: `restaEnt (Suc n) (Suc m)`. Esta cláusula está definida con dos condicionales (`if P then Q else R`) y opera de la siguiente manera: 

- si `Suc n` es igual a `Suc m`, entonces el resultado de la operación es cero; 
- y si no es verdadero que `Suc n` es igual a `Suc m`, entonces evalúa: 
    - si `Suc n` es mayor que `Suc m`, entonces hace la operación `restaEnt n m`; 
    - y si no es verdadero que `Suc n` es mayor que `Suc m`, entonces hace la operación `Neg (restaEnt m n)` (i.e. resta `n` a `m`, y el resultado es un entero negativo). 

Concretamente, lo que hace la función auxiliar `mayorEnt` es evaluar cuál de los enteros es mayor, una vez que se sabe que no son iguales. Si el primero es mayor que el segundo, entonces resta al valor del primero el valor del segundo (i.e., hace una resta de enteros simple); si esto no es así, entonces resta al valor del segundo el valor del primero y asigna al resultado un signo de negación (i.e. devuelve $-(m - n)$). 

3. Si pudieras quedarte con una sola implementación, ¿cuál sería? 

Me quedaría con la implementación que hay en el archivo `enteros.hs`, pues esta sí considera todos los casos de la suma y la resta, tomando en cuenta las leyes de los signos y las propiedades del orden de los enteros. En una palabra: esta implementación es matemáticamente correcta y sus patrones son exhaustivos. (*Aunque creo que es posible una implementación aún más sintética e igualmente correcta y exhaustiva. Ver: `Auxiliar.hs`, dentro del directorio `Practica4`.*)

## *La chivita recursiva* 

La canción popular *Sal de ahí, chivita, chivita* puede servir para ilustrar el concepto de recursión, pues pone en escena la llamada constante a otro para la resolución de un problema. 

En este caso, el problema es que la chivita no quiere salir de donde está. 

Para lograr sacarla de donde está, no solamente se le exhorta a que salga de ahí (*¡Sal de ahí, chivita!*), sino que también se recurre al burro para que ayude a sacarla. 
El burro acude y se mete ahí, con la chivita. 
Pero el burro no quiere sacar a la chivita.
Y la chivita no quiere salir de ahí. 
Entonces se quiere sacar a la chivita y al burro. 
Para ello se recurre al ratón. 
El ratón acude y se mete ahí, con el burro y la chivita. 
Y (*¿Qué más faltaba?*) el ratón no quiere salir de ahí. 
Ya puede uno imaginarse lo que sucede con el gato, con el perro y con el pato. 
Pero se llama finalmente a Plim Plim. 
Plim Plim sí quiere (*¡Gracias, Plim Plim!*) sacar al pato. 
Como Plim Plim sí quiere sacar al pato, el pato quiere entonces sacar al perro. 
Y este al gato. 
Y este otro al ratón. 
Y ya puede uno imaginarse el resto. 
Salen todos de ahí, de ese lugar. 
Y con ellos, por supuesto, la chivita. 

Lo que podemos ver representado en esta situación es una llamada recursiva a una misma acción (sacar a alguien de donde está) con el propósito de resolver un problema. 
Cada animal que se suma y no termina de resolver el problema permanece en espera, y su presencia será relevante para la resolución final. 
El problema halla solución cuando llega Plim Plim, que sería algo así como el caso base. 
Una vez que llega Plim Plim y sí quiere sacar al pato, todo lo demás se resuelve por medio del mismo proceso. 

*¡Hurra!* por Plim Plim y *¡hurra!* por la recursión. 

## **Bibliografía:**

- Marlow, S. (Ed.). (2010). *The Haskell 2010 language report*. Haskell.org. https://www.haskell.org/onlinereport/haskell2010/