import 'package:evaluacion_miguel_lara_2/domain/entities/ficha.dart';

class Alfil extends Ficha {
  Alfil(int x, int y) : super(x, y);

  @override
  bool movimientoValido(int destinoX, int destinoY) {
    // Un movimiento de alfil es válido si se mueve en diagonal.
    int deltaX = (destinoX - x).abs();
    int deltaY = (destinoY - y).abs();

    return deltaX == deltaY;
  }
}
