import 'dart:convert';

import 'package:meu_app_exception/meu_app_exception.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

@GenerateMocks([])
void main() {
  // test('execute_programa_throw', () {
  //   expect(execute_programa(), throwsA(TypeMatcher<IOException>()));
  // });

  // test('execute_programa_assert', () {
  //   String retorno = execute_programa();
  //   print(retorno.toString());
  //   assert(retorno.toString() == "10.0", "O sistema retornou erro !");
  //   print("O sistema retornou tudo correto!");
  // });

  test('consultaCEP', () async {
    var retorno = await retornarCEP();
    assert(retorno["bairro"] == "Janga",
        "O sistema retornou erro ao recuperar CEP.");
    expect(retorno["localidade"], equals("Amaraji"),
        reason: "Essa não é minha cidade !");
    print("O endereço procurado é: $retorno ");
  });
}

class MockViaCep extends Mock implements ViaCEP {}
