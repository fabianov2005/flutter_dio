import 'dart:convert';
import 'dart:io';
import 'package:imc_calculator/service/PessoaService.dart';

double imc_calculator() {
  PessoaService pessoaService = new PessoaService();
  return pessoaService.calcularImc();
}
