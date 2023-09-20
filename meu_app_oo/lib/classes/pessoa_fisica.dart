import 'pessoa_abstract.dart';

class PessoaFisica extends Pessoa {
  PessoaFisica(String nome, String sobrenome, String cpf)
      : super(nome, sobrenome) {
    setCpf(cpf);
  }

  String _cpf = "";
  String getCpf() => this._cpf;

  void setCpf(String cpf) => this._cpf = cpf;

  @override
  String toString() {
    return {
      "Nome": super.getNome(),
      "Sobrenome": super.getSobrenome(),
      "CPF": getCpf()
    }.toString();
  }
}
