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
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/8e8c6f78-3bf7-4754-bb51-7576debb0674" width="500"/>
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

$$tpdf = 276.8 ps $$

$$tcdf = 349 ps $$

$$tpdr = 203.23 $$

$$tcdr = 146.2 $$

### Compuertas simples
Al analizar las compuertas simples, podemos determinar los tiempos de propagación y de contaminación tanto en la subida como en la bajada de la señal para la primera compuerta NOR.

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/9ba7a8b6-aaab-4631-84e8-16eaa4d2bc4e" width="500"/>
</p>

Debido a que está compuesto de 3 NOR, este análisis es el mismo para la compuerta que tiene como entrada C y D.

Sin embargo, para la última NOR determinar estos tiempos es diferente, ya que vamos a depender de las dos compuertas anteriores, si se desea determinar los tiempos pero para la salida se debe de realizar de la siguiente manera. Suponiendo que A y B prima son las salidas de las primera dos compuertas

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/9ceb8edb-0a8f-4b3d-ac50-f0ea1f6fe432" width="500"/>
</p>

Al determinar el los tiempos de la ultima compuerta se puede analizar lo siguiente:

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/f58a16dd-08fe-4395-9f0a-ddab12dbd317" width="500"/>
</p>

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/882970ca-baf4-4d0b-b77d-c3bf775c9f7c" width="500"/>
</p>

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/04f0d9b2-c636-446d-a908-9555ab663a16" width="500"/>
</p>

<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/7b9be5c0-2892-49c3-b164-1072187cfede" width="500"/>
</p>


## Parte 3.
<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/31cd64a2-3e5e-4547-941f-83252ba0ee81" width="500" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/a3026f4f-7a8c-4dea-b6ef-8decaf3e95a9" width="500" />
    <em>Tiempos de propagación de la compuesta</em>
</p>

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/5c2bdae2-096f-4d4a-aae8-8462133ff132" width="500" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/0b43a312-e2c5-48ca-8b68-da0d755e30b1" width="500" />
    <em>Tiempos de contaminación de la compuesta</em>
</p>

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/c39b46da-6a98-491f-b0a4-98da1df38584" width="500"  /><br>
     <em>Tiempos de propagación y contaminación de la compuerta simple</em>
</p>



## Parte 4.
Utilizando los caminos de Euler se determino que la mejor manera de realizar el diagrama de palitos para la compuesta queda de la siguiente manera:
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/38b8e662-bd3a-4278-8faa-18c39fa64ea0" width="300"/>
</p>

Ahora bien, para la NOR como se sabe que las 3 compuertas van a ser relativamente iguales se determinó la mejor manera, dando como resultado: 
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/b2bf00b5-8b88-4d3c-9430-292c6a9db2cf" width="200"/>
</p>

## Parte 5.
<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/4c7133d2-bca8-4f9a-a59f-befafdd3b4c4" width="500" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/edd113d4-0a30-43da-84f0-7c1c08c015c9" width="500" />
    <em>Esquemático y post-trazado con parásitas de la compuerta compuesta</em>
</p>

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/c0ae6b6e-0136-4dac-840e-6f78e1d1771d" width="550" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/0542c41a-9182-4b4b-9a28-8bef00380e99" width="400" />
    <em>Esquemático y post-trazado con parásitas del inversor</em>
</p>

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/01592264-cc0d-40bf-aca1-25c9ca2710a5" width="500" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/cebc9ac9-f850-4dc6-8f69-93b3c7ed8d9c" width="500" />
    <em>Tiempos de propagación con capacitancias parásitas </em>
</p>

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/111e8102-8fd5-46d7-a299-cd6166221da8" width="500" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/2f57dc8b-b307-42ec-bc15-c616337b858b" width="500" />
    <em>Tiempos de contaminación con capacitancias parásitas</em>
</p>

Consumo de la compuerta compuesta
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/48ffcd06-7e66-4960-a1ba-f44a30192db2" width="500"/>
</p>

### Simple

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/1a12e0e8-600c-4fd6-94c1-2b3bae498846" width="500" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/fe5095bc-6fbd-40f6-b232-f93f95b2b663" width="500" />
    <em>Esquemático y post-trazado con parásitas de la compuerta NOR</em>
</p>   

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/4975ae96-460b-45cb-8c8a-c85c4c4f1459" width="500" />
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/d58c822d-e6ff-4e38-a373-a14df9cdb81f" width="500" />
    <em>Esquemático y post-trazado con parásitas de la compuerta NOR de salida</em>
</p>  

<p float="center">
  <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/975ba088-b4d8-4b97-accc-1d23bc4ce1b4" width="600"  /><br>
     <em>Tiempos de propagación y contaminación de la compuerta simple con capacitancias parásitas</em>
</p>

Consumo de la compuerta simple
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/48ffcd06-7e66-4960-a1ba-f44a30192db2" width="500"/>
</p>


## Parte 6.
Puntos extra
