# Tarea-2_VLSI

En la tarea, además de resolver el problema de diseño de circuitos electrónicos y comparar soluciones en términos de retardo y consumo de potencia, se requiere realizar el diseño de layout para ambos circuitos. Esto implica trazar el diseño físico de las compuertas y conexiones en un chip o sustrato, asegurándose de que todas las compuertas tengan el mismo alto y minimizando las capacitancias parásitas entre nodos. El layout debe seguir un trazado optimizado que tenga en cuenta las relaciones de tamaño obtenidas previamente, con un alto máximo definido de 4.48 micrómetros. Además, se deben realizar simulaciones post-trazado con parásitas incluidas para comparar y comentar los resultados obtenidos.
## Parte 1.
A continuación, se presentarán los estimados de retardo y consumo promedio de potencia aproximado para las dos posibles soluciones al problema 9.4 de [1]. Se evaluará y contrastará ambas soluciones utilizando la teoría de Esfuerzo Lógico, considerando la velocidad y el consumo de potencia dinámica aproximados de cada una.
Para implementar esta lógica, se utilizaron dos enfoques diferentes. En uno de ellos, se emplearon únicamente compuertas simples, mientras que en el otro se utilizó una compuerta compleja junto con un inversor. 
La implementacion realizada con compuertas simple quedó de la siguiente manera: 
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/bc585a32-ba6d-4422-b534-9c71cbfdbb13" width="500"/>
</p>
A continuación se exponen los resultados del análisis realizado utilizando la compuerta mencionada anteriormente.
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/e0fc2c18-4124-45b8-811f-d78d810d38d3" width="500"/>
</p>
Analizando los resultados de la capacitancia para la primera compuerta NOR, se utilizarán transistores con una relación de 2:1, resultando en un tamaño de 6 para el transistor N y 24 para el transistor P, esto debido a las características inherentes de la compuerta. Para la segunda compuerta NOR, los tamaños de los transistores quedaron en 98 para el transistor P y 24 para el transistor N.

Para determinar la potencia se debe de realizar el siguiente análisis:
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/f17a0bbc-962c-4741-b1be-54352882b93d" width="500"/>
</p>

Ahora bien, para la compuerta compuesta con el inversor, se puede análizar utilizando el siguiente esquematico.
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/9a7aaa88-cd45-4575-936c-58a93a860ba8" width="500"/>
</p>

Lo que da como resultado:
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/7632fd30-2667-4a1d-88e8-a36c6a9e1e75" width="500"/>
</p>


## Parte 2.
Con respecto a los tiempos de propagación y contaminación, se realizaron tanto los cálculos para la compuerta compuesta como para las etapas más pequeñas en el que se estudia el mejor y el peor caso tomando las capacitancias que se deban cargar o descargar en cada caso

### Compuerta compuesta e inversor 
Con respecto al tiempo de propagación de bajada (tpdf) de la compuerta compuesta se realizaron los siguientes cálculos, donde el caso de estudio será cuando solo dos transistores N esten activos, dejando un retardo de 16RC, donde $$RC = \tau = 17.3 ps$$ 
De aquí en adelante se asumirá el valor de tau anterior.
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/923565bc-24c1-407c-b4af-da3a99a3ff13" width="500"/>
</p>

Para el caso del tiempo de propagación de subida (tpdr), se estudia el caso en el que exite un transitor N activo, por lo que su capacitancia deberá ser cargada. Para este caso el resultado es de: $$20 \tau = 349ps$$ 
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/6c5f8b46-0377-487c-8ced-2f862fb0a312" width="500"/>
</p>

Para los casos de contaminación, se tienen los siguientes casos de estudio.
Para el tcdf, existen por lo menos 3 transistore N activos, reduciendo así la resistencia presente en el camino. Esto da como resultado:

$$ \frac{47}{4} * \tau = 203.23ps$$ 

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/1a4af96e-350f-4bc2-b422-8e6236cf79b7" width="500"/>
</p>
El caso del tcdr, no existen transistores N activos, nuevamente reduciendo la resistencia del camino y aparte de esto las capacitancias a cargar, esto deja como resultado: 

$$\frac{17}{2} * \tau = 146.2 ps$$ 

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/8cbf4cc0-ad32-4ca1-9c22-d667a243aa7e" width="500"/>
</p>

Seguidamente, se necesitan estudiar los tiempos de propagación y contaminación del inversor. Las capacitancias y resistencias presentes se puede observar en la siguiente figura:
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/884bd672-171c-4989-9816-79f61ea25e4f" width="500"/>
</p>

Teniendo esta información, se pueden calcular los tiempos de subida como de bajada, pero en este caso no existe un peor o mejor caso, ya que si el transistores P está activo el N no lo está y viceversa. Esto da un resultado, y tomando en cuenta la capacitancia de carga presente, un tiempo de subida y bajada de: $$51.6 ps$$ 
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/cf2ec9b9-b6a0-4cb1-8d64-02ede784b9b1" width="500"/>
</p>

Ya obteniendo tanto los tiempos de la compuerta compuesta como los del inversor, se puede hacer una estimación del tiempo de retardo que se puede obtener tanto de subida y bajada en los mejores y peores casos, estos resultados son los siguientes:

$$tpdf = x $$

$$tcdf = y $$

$$tpdr = z $$

$$tcdr = x $$

## Parte 3.


## Parte 4.
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/38b8e662-bd3a-4278-8faa-18c39fa64ea0" width="300"/>
</p>
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/b2bf00b5-8b88-4d3c-9430-292c6a9db2cf" width="200"/>
</p>

## Parte 5.
### Simple
#### Primera NOR
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/1a12e0e8-600c-4fd6-94c1-2b3bae498846" width="550"/>
</p>

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/fe5095bc-6fbd-40f6-b232-f93f95b2b663" width="500"/>
</p
    
#### Segunda NOR
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/4975ae96-460b-45cb-8c8a-c85c4c4f1459" width="550"/>
</p>

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/d58c822d-e6ff-4e38-a373-a14df9cdb81f" width="500"/>
</p>



## Parte 6.
Puntos extra
