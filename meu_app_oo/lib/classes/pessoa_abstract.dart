abstract class Pessoa {
  String _nome = "";
  String _sobrenome = "";

  Pessoa(String nome, String sobrenome) {
    setNome(nome);
    setSobrenome(sobrenome);
  }

  String getSobrenome() => _sobrenome.toUpperCase();
  void setSobrenome(String value) => this._sobrenome = value;

  String getNome() => _nome.toUpperCase();
  void setNome(nome) => _nome = nome;

  @override
  String toString() {
    return {"Nome": _nome, "Sobrenome": _sobrenome}.toString();
  }
}
