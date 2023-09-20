import 'package:imc_calculator/imc_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    double imc = imc_calculator();
    expect(imc.round(), equals(36.80268595041323.round()),
        reason: "IMC incorreto !");
  });
}
