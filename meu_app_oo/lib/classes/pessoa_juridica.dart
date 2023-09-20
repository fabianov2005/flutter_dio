import 'package:meu_app_oo/classes/pessoa_abstract.dart';

class PessoaJuridica extends Pessoa {
  PessoaJuridica(String nome, String sobrenome, String cnpj)
      : super(nome, sobrenome) {
    setCnpj(cnpj);
  }

  String _cnpj = "";

  String getCnpj() => _cnpj;
  void setCnpj(String cnpj) => _cnpj = cnpj;

  @override
  String toString() {
    return {
      "Nome": super.getNome(),
      "Sobrenome": super.getSobrenome(),
      "CNPJ": getCnpj()
    }.toString();
  }
}
