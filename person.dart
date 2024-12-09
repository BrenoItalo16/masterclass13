import 'calculator.dart';
import 'cpf_validator.dart';

class Person {
  final String name;
  final String lastName;
  final CpfValidator cpf;
  final Calculator useCalculator;

  const Person(
    this.name,
    this.lastName,
    this.cpf,
    this.useCalculator,
  );
}
