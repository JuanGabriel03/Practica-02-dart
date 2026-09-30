// ============================================================
// PRÁCTICA 02 - DESARROLLO DE SOFTWARE II
// Ejercicio propuesto con List
//
// Objetivo:
// Combinar dos listas ordenadas en una sola lista ordenada.
//
// Restricciones:
// - El número de nodos de ambas listas está entre 0 y 50.
// - Los valores de los nodos están entre -100 y 100.
// - Las listas de entrada están ordenadas en orden no decreciente.
// ============================================================


// Verifica que la lista cumpla las restricciones del ejercicio.
bool datosValidos(List<int> lista) {
  // Restricción: máximo 50 elementos.
  if (lista.length > 50) {
    return false;
  }

  // Restricción: cada valor debe estar entre -100 y 100.
  for (int valor in lista) {
    if (valor < -100 || valor > 100) {
      return false;
    }
  }

  // Restricción: la lista debe estar ordenada.
  for (int i = 1; i < lista.length; i++) {
    if (lista[i] < lista[i - 1]) {
      return false;
    }
  }

  return true;
}


// Combina dos listas ordenadas y devuelve
// una nueva lista también ordenada.
List<int> combinarListas(List<int> lista1, List<int> lista2) {

  List<int> resultado = [];

  int i = 0;
  int j = 0;

  // Comparamos los elementos de ambas listas
  // mientras las dos tengan elementos disponibles.
  while (i < lista1.length && j < lista2.length) {

    if (lista1[i] <= lista2[j]) {
      resultado.add(lista1[i]);
      i++;
    } else {
      resultado.add(lista2[j]);
      j++;
    }
  }

  // Agregamos los elementos restantes de lista1.
  while (i < lista1.length) {
    resultado.add(lista1[i]);
    i++;
  }

  // Agregamos los elementos restantes de lista2.
  while (j < lista2.length) {
    resultado.add(lista2[j]);
    j++;
  }

  return resultado;
}


void ejecutarEjemplo(
  int numero,
  List<int> lista1,
  List<int> lista2,
) {
  print('==============================');
  print('EJEMPLO $numero');
  print('==============================');

  print('Entrada:');
  print('lista1 = $lista1');
  print('lista2 = $lista2');

  if (!datosValidos(lista1) || !datosValidos(lista2)) {
    print('Error: los datos no cumplen las restricciones.');
    print('');
    return;
  }

  List<int> resultado = combinarListas(lista1, lista2);

  print('Salida:');
  print(resultado);
  print('');
}


void main() {

  // ----------------------------------------------------------
  // EJEMPLO 1
  // lista1 = [1,2,4]
  // lista2 = [1,3,4]
  // Salida = [1,1,2,3,4,4]
  // ----------------------------------------------------------

  ejecutarEjemplo(
    1,
    [1, 2, 4],
    [1, 3, 4],
  );


  // ----------------------------------------------------------
  // EJEMPLO 2
  // lista1 = []
  // lista2 = []
  // Salida = []
  // ----------------------------------------------------------

  ejecutarEjemplo(
    2,
    [],
    [],
  );


  // ----------------------------------------------------------
  // EJEMPLO 3
  // lista1 = []
  // lista2 = [0]
  // Salida = [0]
  // ----------------------------------------------------------

  ejecutarEjemplo(
    3,
    [],
    [0],
  );
}