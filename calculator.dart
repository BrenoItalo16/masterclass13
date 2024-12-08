class Calculator {
  //Começa por 0 ou 1
  //Cada termo subsequente corresponde a soma dos dois anteriores
  //Informar um deadLine

  //Função que retorna a sequencia fibonacci até o valor informado.
  List<int> calculateFibonacciSequenceWithRecursivityUpTo(int deadLine) {
    return FibonacciCalculator().calculateFibonacciSequenceUpTo(deadLine);
  }

  //Função para calcular IMC
  double imc(double weight, double height) {
    double imc = weight / (height * height);
    return double.parse(imc.toStringAsFixed(2));
  }

  //Regra de três
  double? ruleOfThree({
    double? group1_1,
    double? group1_2,
    double? group2_1,
    double? group2_2,
  }) {
    if (group1_1 == null) {
      return (group1_2! * group2_1!) / group2_2!;
    } else if (group1_2 == null) {
      return (group2_2! * group1_1) / group2_1!;
    } else if (group2_1 == null) {
      return (group1_1 * group2_2!) / group1_2;
    } else if (group2_2 == null) {
      return (group1_2 * group2_1) / group1_1;
    }
    return null;
  }
}

class FibonacciCalculator {
  List<int> calculateFibonacciSequenceUpTo(int deadLine) {
    List<int> fibonacciSequence = [];
    int i = 0;
    while (true) {
      int fibonacciNumber = _fibonacci(i);
      if (fibonacciNumber >= deadLine) {
        break;
      }
      fibonacciSequence.add(fibonacciNumber);
      i++;
    }
    return fibonacciSequence;
  }

  int _fibonacci(int value) {
    if (value <= 1) {
      return value;
    }
    return _fibonacci(value - 1) + _fibonacci(value - 2);
  }
}
