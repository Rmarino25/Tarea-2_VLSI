# Tarea-2_VLSI

En la tarea, además de resolver el problema de diseño de circuitos electrónicos y comparar soluciones en términos de retardo y consumo de potencia, se requiere realizar el diseño de layout para ambos circuitos. Esto implica trazar el diseño físico de las compuertas y conexiones en un chip o sustrato, asegurándose de que todas las compuertas tengan el mismo alto y minimizando las capacitancias parásitas entre nodos. El layout debe seguir un trazado optimizado que tenga en cuenta las relaciones de tamaño obtenidas previamente, con un alto máximo definido de 4.48 micrómetros. Además, se deben realizar simulaciones post-trazado con parásitas incluidas para comparar y comentar los resultados obtenidos.
## 1.
A continuación, se presentarán los estimados de retardo y consumo promedio de potencia aproximado para las dos posibles soluciones al problema 9.4 de [1]. Se evaluará y contrastará ambas soluciones utilizando la teoría de Esfuerzo Lógico, considerando la velocidad y el consumo de potencia dinámica aproximados de cada una.
Para implementar esta lógica, se utilizaron dos enfoques diferentes. En uno de ellos, se emplearon únicamente compuertas simples, mientras que en el otro se utilizó una compuerta compleja junto con un inversor. 
La implementacion realizada con compuertas simple quedó de la siguiente manera: 
![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/94d98835-e569-444b-b055-bc86acec3ba7)

A continuación se exponen los resultados del análisis realizado utilizando la compuerta mencionada anteriormente.

![image](https://github.com/Rmarino25/Tarea-2_VLSI/assets/110353604/e0fc2c18-4124-45b8-811f-d78d810d38d3)

Analizando los resultados de la capacitancia para la primera compuerta NOR se van a utilizar transitores con una relacion de 2:1, de modo que el N quedo de 6 y el P de 24, esto debido la compuerta como tal, para la segunda NOR los tamaños quedaron de 98 el p y de 24 el N
