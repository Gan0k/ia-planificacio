Utilizamos el generador de juegos de prueba para generar casos donde:

- El numero de vuelos es el numero de ciudades - 1 + k vuelos extra.
	- k = min(nc*(nc-1)/2 - nc-1, 100)
  Con esto aseguramos que experimentamos desde con grafos completos
  hasta con grafos muy poco densos en funcion del numero de ciudades.
  Los arcos del grafo se eligen de tal forma que, como minimo, se obtendra un 
  arbol el cual conecta todas las ciudades de alguna forma.

- El minimo y maximo de dias por ciudad sera 1.
- El minimo de dias del viaje sera numero_ciudades.

- El coste minimo y maximo se fijan a valores que aseguren una solucion.
