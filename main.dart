import 'person.dart';

void main() {
  Person breno = Person();

  //Calculando IMC
  print('IMC: ${breno.imc(84, 1.74)}');
  //Retornando sequencia fibonacci até o número informado
  print(
      'Sequência fibonacci: ${breno.calculateFibonacciSequenceWithRecursivityUpTo(1000)}');
}
