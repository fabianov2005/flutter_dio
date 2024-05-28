import 'dart:math';

class GeradorNumeroAleatorioService {
  static int gerarNumeroAleatorio(int max) {
    return Random.secure().nextInt(max);
  }
}
