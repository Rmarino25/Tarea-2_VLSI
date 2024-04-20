# Tarea-2_VLSI

En la tarea, además de resolver el problema de diseño de circuitos electrónicos y comparar soluciones en términos de retardo y consumo de potencia, se requiere realizar el diseño de layout para ambos circuitos. Esto implica trazar el diseño físico de las compuertas y conexiones en un chip o sustrato, asegurándose de que todas las compuertas tengan el mismo alto y minimizando las capacitancias parásitas entre nodos. El layout debe seguir un trazado optimizado que tenga en cuenta las relaciones de tamaño obtenidas previamente, con un alto máximo definido de 4.48 micrómetros. Además, se deben realizar simulaciones post-trazado con parásitas incluidas para comparar y comentar los resultados obtenidos.
## 1.
A continuación, se presentarán los estimados de retardo y consumo promedio de potencia aproximado para las dos posibles soluciones al problema 9.4 de [1]. Se evaluará y contrastará ambas soluciones utilizando la teoría de Esfuerzo Lógico, considerando la velocidad y el consumo de potencia dinámica aproximados de cada una.
Para implementar esta lógica, se utilizaron dos enfoques diferentes. En uno de ellos, se emplearon únicamente compuertas simples, mientras que en el otro se utilizó una compuerta compleja junto con un inversor. 
La implementacion realizada con compuertas simple quedó de la siguiente manera: 

![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/bc585a32-ba6d-4422-b534-9c71cbfdbb13)

A continuación se exponen los resultados del análisis realizado utilizando la compuerta mencionada anteriormente.

![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/e0fc2c18-4124-45b8-811f-d78d810d38d3)

Analizando los resultados de la capacitancia para la primera compuerta NOR, se utilizarán transistores con una relación de 2:1, resultando en un tamaño de 6 para el transistor N y 24 para el transistor P, esto debido a las características inherentes de la compuerta. Para la segunda compuerta NOR, los tamaños de los transistores quedaron en 98 para el transistor P y 24 para el transistor N.

Para determinar la potencia se debe de realizar el siguiente análisis:

![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/f17a0bbc-962c-4741-b1be-54352882b93d)

Ahora bien, para la compuerta compuesta con el inversor, se puede análizar utilizando el siguiente esquematico.

![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/9a7aaa88-cd45-4575-936c-58a93a860ba8)

Lo que da como resultado:

![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/7632fd30-2667-4a1d-88e8-a36c6a9e1e75)

## 2.
<p align="center">
    <img src="https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/923565bc-24c1-407c-b4af-da3a99a3ff13" width="500"/>
</p>

asd
![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/923565bc-24c1-407c-b4af-da3a99a3ff13)
![image2](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/1c351568-db8f-4122-b0ed-eaa0db9d3cb9)
![image3](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/1a4af96e-350f-4bc2-b422-8e6236cf79b7)
![image4](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/8cbf4cc0-ad32-4ca1-9c22-d667a243aa7e)
![image5](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/884bd672-171c-4989-9816-79f61ea25e4f)
![image6](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110320407/cf2ec9b9-b6a0-4cb1-8d64-02ede784b9b1)

