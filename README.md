# Práctica 02 - Desarrollo de Software II - Dart

**Estudiante:** Juan Gabriel Huisa Mamani  
**Curso:** Desarrollo de Software II  
**Lenguaje:** Dart  
**Entorno de ejecución:** DartPad

## Descripción

Repositorio correspondiente a la Práctica N.° 2 de Desarrollo de Software II.

En esta práctica se desarrollan los ejercicios propuestos de la guía relacionados con las estructuras de datos `List`, `Map` y `Set`.

## Ejercicios desarrollados

### 01 - List

Combinación de dos listas ordenadas en una sola lista ordenada.

**Casos desarrollados:**

- `[1, 2, 4]` + `[1, 3, 4]` → `[1, 1, 2, 3, 4, 4]`
- `[]` + `[]` → `[]`
- `[]` + `[0]` → `[0]`

**Archivo:** `01_ejercicio_list.dart`

---

### 02 - Map

Obtención de la intersección de dos arreglos respetando la cantidad de apariciones de cada elemento.

**Casos desarrollados:**

- `[1, 2, 2, 1]` y `[2, 2]` → `[2, 2]`
- `[4, 9, 5]` y `[9, 4, 9, 8, 4]` → `[9, 4]`

**Archivo:** `02_ejercicio_map.dart`

---

### 03 - Set

Asignación de tipos de fruta a cestas disponibles y determinación de las frutas que quedan sin colocar.

**Casos desarrollados:**

- `[4, 2, 5]` y `[3, 5, 4]` → `1`
- `[3, 6, 1]` y `[6, 4, 7]` → `0`

**Archivo:** `03_ejercicio_set.dart`

---

## Ejecución

Los programas fueron desarrollados y ejecutados utilizando **DartPad**.

[DartPad](https://dartpad.dev/)

## Estructura del repositorio

```text
Practica-02-dart/
│
├── 01_ejercicio_list.dart
├── 02_ejercicio_map.dart
├── 03_ejercicio_set.dart
└── README.md
