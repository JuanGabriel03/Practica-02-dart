// ============================================================
// PRÁCTICA 02 - DESARROLLO DE SOFTWARE II
// Ejercicio propuesto con Set
//
// Objetivo:
// Colocar cada tipo de fruta en la primera cesta disponible
// cuya capacidad sea mayor o igual a la cantidad de fruta.
//
// Si una fruta no puede colocarse, queda sin colocar.
//
// Restricciones:
// - 1 <= n <= 100
// - 1 <= frutas[i] <= 1000
// - 1 <= cestas[i] <= 1000
// ============================================================


// Verifica que los datos cumplan las restricciones.
bool datosValidos(List<int> datos) {

  // La cantidad de elementos debe estar entre 1 y 100.
  if (datos.isEmpty || datos.length > 100) {
    return false;
  }

  // Cada valor debe estar entre 1 y 1000.
  for (int valor in datos) {
    if (valor < 1 || valor > 1000) {
      return false;
    }
  }

  return true;
}


// Determina cuántos tipos de fruta quedan sin colocar.
int frutasSinColocar(
  List<int> frutas,
  List<int> cestas,
) {

  int sinColocar = 0;

  // Indica si una cesta ya fue utilizada.
  Set<int> cestasUtilizadas = {};

  // Recorremos las frutas de izquierda a derecha.
  for (int fruta in frutas) {

    bool colocada = false;

    // Buscamos la primera cesta disponible
    // con capacidad suficiente.
    for (int i = 0; i < cestas.length; i++) {

      if (!cestasUtilizadas.contains(i) &&
          cestas[i] >= fruta) {

        // Marcamos la cesta como utilizada.
        cestasUtilizadas.add(i);

        colocada = true;

        break;
      }
    }

    // Si no encontramos una cesta adecuada,
    // aumentamos el contador.
    if (!colocada) {
      sinColocar++;
    }
  }

  return sinColocar;
}


// Ejecuta cada ejemplo de la guía.
void ejecutarEjemplo(
  int numero,
  List<int> frutas,
  List<int> cestas,
) {

  print('==============================');
  print('EJEMPLO $numero');
  print('==============================');

  print('Entrada:');
  print('frutas = $frutas');
  print('cestas = $cestas');

  // Verificamos las restricciones.
  if (!datosValidos(frutas) ||
      !datosValidos(cestas)) {

    print('Error: los datos no cumplen las restricciones.');
    print('');
    return;
  }

  // Ambas listas deben tener la misma longitud.
  if (frutas.length != cestas.length) {

    print('Error: frutas y cestas deben tener la misma longitud.');
    print('');

    return;
  }

  int resultado = frutasSinColocar(
    frutas,
    cestas,
  );

  print('Salida:');
  print(resultado);
  print('');
}


void main() {

  // ----------------------------------------------------------
  // EJEMPLO 1
  //
  // frutas = [4,2,5]
  // cestas = [3,5,4]
  //
  // Salida = 1
  // ----------------------------------------------------------

  ejecutarEjemplo(
    1,
    [4, 2, 5],
    [3, 5, 4],
  );


  // ----------------------------------------------------------
  // EJEMPLO 2
  //
  // frutas = [3,6,1]
  // cestas = [6,4,7]
  //
  // Salida = 0
  // ----------------------------------------------------------

  ejecutarEjemplo(
    2,
    [3, 6, 1],
    [6, 4, 7],
  );
}