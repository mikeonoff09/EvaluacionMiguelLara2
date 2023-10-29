import 'package:evaluacion_miguel_lara_2/infrastructure/models/alfil.dart';
import 'package:test/test.dart';

void main() {
  group('Alfil', () {
    test('Movimiento válido en diagonal', () {
      // Crea un objeto Alfil en la posición (4, 4).
      final alfil = Alfil(4, 4);

      // Prueba un movimiento válido en diagonal.
      expect(alfil.movimientoValido(6, 6), isTrue);
      expect(alfil.movimientoValido(2, 2), isTrue);
      expect(alfil.movimientoValido(5, 5), isTrue);
      expect(alfil.movimientoValido(3, 5), isTrue);
    });

    test('Movimiento no válido en diagonal', () {
      // Crea un objeto Alfil en la posición (4, 4).
      final alfil = Alfil(4, 4);

      // Prueba movimientos que no son válidos en diagonal.
      expect(alfil.movimientoValido(6, 7), isFalse);
      expect(alfil.movimientoValido(3, 4), isFalse);
      expect(alfil.movimientoValido(3, 6), isFalse);
      expect(alfil.movimientoValido(1, 6), isFalse);
    });
  });
}
