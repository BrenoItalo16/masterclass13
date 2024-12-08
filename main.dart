import 'calculator.dart';
import 'person.dart';

void main() {
  // Instancia uma pessoa
  Calculator calculator = Calculator();
  // Instancia uma pessoa
  Person breno = Person('Breno', 'Silva', '123.456.789-00', calculator);

  // A pessoa usa Calculadora e chama IMC
  print('IMC: ${breno.useCalculator.imc(84, 1.74)}');

  // A pessoa usa Calculadora e chama Fibonacci
  print(
    'Sequência fibonacci: ${breno.useCalculator.calculateFibonacciSequenceWithRecursivityUpTo(1000)}',
  );

  // A pessoa usa Calculadora e calcula a regra de três
  print(
    'O resultado da regra de três é: ${breno.useCalculator.ruleOfThree(
      group1_1: 6,
      group2_1: 20,
      group2_2: 50,
    )}',
  );
}
