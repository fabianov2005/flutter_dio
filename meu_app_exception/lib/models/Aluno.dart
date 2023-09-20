class aluno {
  String _nome = "";
  String get_nome() => _nome;
  void set_nome(String nome) => _nome = nome;

  List<double> _notas = [];
  List<double> get_notas() => _notas;
  void set_notas(List<double> notas) => _notas = notas;

  Aluno(String nome) {
    _nome = nome;
  }
}
