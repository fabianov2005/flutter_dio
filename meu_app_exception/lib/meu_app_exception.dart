import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

String execute_programa() {
  print("Digite um número:");
  var numero = stdin.readLineSync(encoding: utf8);
  try {
    double num = double.parse(numero ?? "");
    print(num);
    return num.toString();
  } catch (e) {
    throw Exception("Erro ao ler número. Mensagem de Erro: $e");
  }
}

Future<Map<dynamic, dynamic>> retornarCEP() async {
  print('Digite o número do CEP');
  var cep = stdin.readLineSync(encoding: utf8);
  var retorno = await http.get(Uri.parse("http://viacep.com.br/ws/$cep/json/"));
  var decoderetorno = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
  return decoderetorno;
}
