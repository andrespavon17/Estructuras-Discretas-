**Pregunta 1: ¿Cuáles son las principales diferencias entre Haskell y Rust?**

- El paradigma. Haskell es un lenguaje puramente funcional: el código escrito en Haskell declara lo que se debe hacer en un lenguaje estrictamente matemático y, por tanto, no tiene efectos secundarios: cuando se declara un valor para una función, este no corre el riesgo de cambiar; las funciones calculan y arrojan resultados, y en ese sentido es preciso y transparente. Rust es un lenguaje de programación multiparadigma en el cual la escritura de código está orientada al control de sistemas como el hardware y la memoria; es versátil y flexible.

- La estrategia de evaluación. Haskell usa una estrategia de evaluación llamada perezoa; esto quiere decir que no hace cálculos más que cuando los necesita y permite así crear estructuras de datos muy grandes y gestionarlas eficientemente. Rust usa una estrategia de evaluación llamada impaciente, de manera que ejecuta las expresiones del código de manera inmediata.

- La gestión de la memoria.
Haskell genera continuamente nuevas estructuras en vez de modificar las ya existentes,así que no tiene (porque, en realidad, no puede) que volver a las anteriores para ejecutar una acción. Rust, por su parte, tiene un sistema de propiedad, préstamos y tiempos de vida, que permite asegurar el buen uso de la memoria, y que se distingue de otros paradigmas con recolectores de basura para liberar la memoria.

- Concurrencia. Haskell separa el código puro del código que recibe valores de entrada y arroja valores de salida constantemente, para así dar claridad a su modo de referencia y evitar conflictos de estado. Rust usa algo llamado concurrencia sin temor, un sistema que evita las carreras de datos y los accesos no válidos a la memoria mientras compila. 


**Pregunta 2: ¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?**

Haskell no ha alcanzado una adopción que podamos llamar significativa porque tiene una curva de aprendizaje muy pronunciada: es difícil aprenderlo, puesto que no es de los paradigmas más populares, y es necesario tener un conocimiento amplio de él para saber usarlo adecuadamente. Por esta razón, si bien hay desarrolladores especializados en Haskell, en realidad son muy pocos, de manera que no son facilmente reemplazables (algo que se busca ávidamente estos días). Además, ninguna gran compañía (como sucedió con Oracle y Java) basó realmente la totalidad de su tecnología en este paradigma, de manera que a falta de un patrocinador, se ha mantenido a los márgenes. 


**Pregunta 3: Si tuvieras que explicar a una persona que no es de CC la función que cumple Git frente a la que cumple GitHub, ¿cómo se lo explicarías?**

Diría lo siguiente:
Git es un programa, digamos una herramienta que ayuda a solucionar problemas, que guarda una copia de cada una de las versiones de un documento en el que trabajas, con el propósito de permitirte controlarlas.
    Piensa, por ejemplo, que escribes una carta para la persona que te gusta; tienes muchas ideas, así que las escribes en tu proesador de texto favorito, en tu láptop. Conforme trabajas en la carta, vas cambiando algunas frases para llegar a la versión final. Digamos que, en algún momento, recuerdas una de las frases que escribiste al comienzo, que más adelante decidiste quitar, y que ahora quieres recuperar. Entonces necesitas consultar una versión anterior del documento. Git guarda esa versión (y todas las demás versiones anteriores) y te da acceso a ella para que puedas revisarla e incluso restaurarla, de manera que no se elimine la actual y puedas tener ambas.
    GitHub, por su parte, es un servicio que renta espacio para almacenar las copias de las versiones de tus documentos. Usar GitHub para almacenar las copias de las versiones de tus documentos es como usar una bodega rentada para guardar tus decoraciones navideñas; así tienes las decoraciones separadas del resto de los objetos que quieres en tu casa, pero puedas acceder a ellas cuando quieras usarlas. 

**Referencias:**
- Chacon, S. y Straub B (2026). *Pro Git: Everything You Need to Know About Git* (2a ed.). Apress.
- Bird, R. (2015) *Thinking functionally with Haskell*. Cambridge University Press.
- Klabnik, S. y Carol Nichols. (2018) *The Rust Programming language*. No Starch Press.
- Lipovača, M. *Learn You a Haskell for Great Good!* [Libro en línea] Github.Io. Recuperado el 25 de septiembre de 2026 de: https://learnyouahaskell.github.io/chapters.html