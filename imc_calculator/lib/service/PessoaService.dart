import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:imc_calculator/model/Pessoa.dart';

class PessoaService {
  double calcularImc() {
    Pessoa pessoa = new Pessoa();
    double imc = 0;
    print("-----------------------------------------------------------");
    print("---------------------Calculadora IMC-----------------------");
    print("-----------------------------------------------------------");
    try {
      print("Nome da Pessoa a qual deseja-se calcular o IMC:            ");
      pessoa.setNome(stdin.readLineSync(encoding: utf8).toString());
      print("Peso atual:            ");
      pessoa.setPeso(double.parse(
          stdin.readLineSync(encoding: utf8).toString().toString()));
      print("Altura atual:            ");
      pessoa.setAltura(double.parse(
          stdin.readLineSync(encoding: utf8).toString().toString()));
      print("-----------------------------------------------------------");
      print("-----------------------------------------------------------");
      imc = pessoa.getPeso()! / (pow(pessoa.getAltura()!, 2));
      return imc;
    } catch (e) {
      throw ArgumentError.value(e);
    }
  }
}
