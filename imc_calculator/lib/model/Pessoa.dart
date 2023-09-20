class Pessoa {
  String? _nome;
  double? _peso;
  double? _altura;

  Pessoa() {}

  String? getNome() {
    return _nome;
  }

  double? getPeso() {
    return _peso;
  }

  double? getAltura() {
    return _altura;
  }

  setNome(String? nome) {
    _nome = nome;
  }

  setPeso(double? peso) {
    _peso = peso;
  }

  setAltura(double? altura) {
    _altura = altura;
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString();
  }
}
