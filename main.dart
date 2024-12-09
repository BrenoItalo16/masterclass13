import 'calculator.dart';
import 'cpf_validator.dart';
import 'person.dart';

void main() {
  // Instancia uma pessoa
  Calculator calculator = Calculator();
  CpfValidator cpf = CpfValidator();
  // Instancia uma pessoa
  Person breno = Person('Breno', 'Italo', cpf, calculator);

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

  // Validar CPF
  bool isCpfValid = breno.cpf.isValid('084.405.664-25');
  print(isCpfValid ? 'CPF válido' : 'CPF inválido');
}
