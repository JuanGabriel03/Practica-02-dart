// ============================================================
// PRÁCTICA 02 - DESARROLLO DE SOFTWARE II
// Ejercicio propuesto con Map
//
// Objetivo:
// Encontrar la intersección de dos arreglos de enteros.
//
// Cada elemento debe aparecer en el resultado tantas veces
// como aparece en ambos arreglos.
//
// Restricciones:
// - nums1 y nums2 tienen entre 1 y 1000 elementos.
// - Los valores están entre 0 y 1000.
// ============================================================


// Verifica que los datos cumplan las restricciones.
bool datosValidos(List<int> numeros) {

  // La lista debe tener entre 1 y 1000 elementos.
  if (numeros.isEmpty || numeros.length > 1000) {
    return false;
  }

  // Cada valor debe estar entre 0 y 1000.
  for (int numero in numeros) {
    if (numero < 0 || numero > 1000) {
      return false;
    }
  }

  return true;
}


// Obtiene la intersección de dos listas.
List<int> interseccion(List<int> nums1, List<int> nums2) {

  // Map para almacenar la cantidad de veces
  // que aparece cada número en nums1.
  Map<int, int> cantidades = {};

  for (int numero in nums1) {
    cantidades[numero] = (cantidades[numero] ?? 0) + 1;
  }

  // Lista donde guardaremos el resultado.
  List<int> resultado = [];

  // Revisamos los elementos de nums2.
  for (int numero in nums2) {

    // Si el número todavía está disponible
    // en la primera lista, lo agregamos.
    if ((cantidades[numero] ?? 0) > 0) {

      resultado.add(numero);

      // Disminuimos la cantidad disponible.
      cantidades[numero] = cantidades[numero]! - 1;
    }
  }

  return resultado;
}


// Ejecuta cada ejemplo de la guía.
void ejecutarEjemplo(
  int numero,
  List<int> nums1,
  List<int> nums2,
) {

  print('==============================');
  print('EJEMPLO $numero');
  print('==============================');

  print('Entrada:');
  print('nums1 = $nums1');
  print('nums2 = $nums2');

  // Comprobamos las restricciones.
  if (!datosValidos(nums1) || !datosValidos(nums2)) {
    print('Error: los datos no cumplen las restricciones.');
    print('');
    return;
  }

  List<int> resultado = interseccion(nums1, nums2);

  print('Salida:');
  print(resultado);
  print('');
}


void main() {

  // ----------------------------------------------------------
  // EJEMPLO 1
  //
  // nums1 = [1,2,2,1]
  // nums2 = [2,2]
  //
  // Salida = [2,2]
  // ----------------------------------------------------------

  ejecutarEjemplo(
    1,
    [1, 2, 2, 1],
    [2, 2],
  );


  // ----------------------------------------------------------
  // EJEMPLO 2
  //
  // nums1 = [4,9,5]
  // nums2 = [9,4,9,8,4]
  //
  // Salida = [9,4]
  // También sería válida [4,9].
  // ----------------------------------------------------------

  ejecutarEjemplo(
    2,
    [4, 9, 5],
    [9, 4, 9, 8, 4],
  );
}