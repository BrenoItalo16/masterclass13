class Calculator {
  //Começa por 0 ou 1
  //Cada termo subsequente corresponde a soma dos dois anteriores
  //Informar um deadLine

  List<int> calculateFibonacciSequenceWithRecursivityUpTo(int deadLine) {
    return FibonacciCalculator().calculateFibonacciSequenceUpTo(deadLine);
  }

  double imc(double weight, double height) {
    double imc = weight / (height * height);
    return double.parse(imc.toStringAsFixed(2));
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
