import 'calculator.dart';

class Person {
  final String name;
  final String lastName;
  final String cpf;
  final Calculator useCalculator;

  const Person(
    this.name,
    this.lastName,
    this.cpf,
    this.useCalculator,
  );
}
