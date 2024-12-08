import 'calculator.dart';

class Person extends Calculator {
  //Método calcular IMC
  double imc(double weight, double hight) {
    //A variável "imc" recebe o cálculo
    double imc = weight / (hight * hight);
    //Retorna o valor do "imc" com apenas 2 casas decimais
    return double.parse(imc.toStringAsFixed(2));
  }
}
