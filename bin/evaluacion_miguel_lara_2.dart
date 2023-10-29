import 'dart:io';

import 'package:evaluacion_miguel_lara_2/infrastructure/models/alfil.dart';

void main() {
  // Obtener las coordenadas de origen y destino desde stdin
  stdout.write("Ingrese las coordenadas de origen (Formato: X Y): ");
  var origen = stdin.readLineSync()!.split(" ").map((e) {
    return int.parse(e);
  }).toList();

  stdout.write("Ingrese las coordenadas de destino (Formato: X Y): ");
  var destino = stdin.readLineSync()!.split(" ").map((e) {
    return int.parse(e);
  }).toList();

  if (origen.length != 2 || destino.length != 2) {
    print("Entrada incorrecta. Debe ingresar dos coordenadas (X Y).");
    return;
  }

  Alfil alfil = Alfil(origen[0], origen[1]);

  if (alfil.movimientoValido(destino[0], destino[1])) {
    print("El movimiento del alfil es válido.");
  } else {
    print("El movimiento del alfil no es válido.");
  }
}
