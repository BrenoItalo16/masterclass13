// import 'calculator.dart';
// import 'cpf_validator.dart';
// import 'credit_card_validator.dart';
// import 'person.dart';
// import 'vigenere_cipher.dart';
import 'dot_env.dart';

void main() {
  // Instancia uma pessoa
  // Calculator calculator = Calculator();
  // CpfValidator cpf = CpfValidator();
  // CreditCardValidator creditCard = CreditCardValidator();
  // // Instancia uma pessoa
  // Person breno = Person('Breno', 'Italo', cpf, calculator, creditCard);

  // A pessoa usa Calculadora e chama IMC
  // print('IMC: ${breno.useCalculator.imc(84, 1.74)}');

  // A pessoa usa Calculadora e chama Fibonacci
  // print(
  //   'Sequência fibonacci: ${breno.useCalculator.calculateFibonacciSequenceWithRecursivityUpTo(1000)}',
  // );

  // A pessoa usa Calculadora e calcula a regra de três
  // print(
  //   'O resultado da regra de três é: ${breno.useCalculator.ruleOfThree(
  //     group1_1: 6,
  //     group2_1: 20,
  //     group2_2: 50,
  //   )}',
  // );

  // Validar CPF
  // bool isCpfValid = breno.cpf.isValid('084.405.664-25');
  // print(isCpfValid ? 'CPF válido' : 'CPF inválido');

  // print(breno.creditCart.isValid('5419 8250 0346 1210'));
  // print(breno.creditCart.isValid('4916 6418 5936 9080'));

  // List<List<String>> vigenereCipher = VigenereCipher.createMatrizVigenere();
  // print(vigenereCipher);

  //CIFRA DE VIGENÈRE
  // VigenereCipher vigenereCipher = VigenereCipher();
  // final matrix = VigenereCipher.createMatrix();

  // final text = 'Breno';
  // final key = VigenereCipher.generateKey(text.length);
  // final decodedText = vigenereCipher.encode(text, key, matrix);

  // print('Texto original: $text');
  // print('Key gerada: $key');
  // print('Texto criptografado é: ${vigenereCipher.encode(text, key, matrix)}');
  // print(
  //   'Texto decodificado é: ${vigenereCipher.decode(decodedText, key, matrix)}',
  // );

  //DOT ENV
  try {
    // Carregar o arquivo .env
    final dotenv = DotEnv('.env');

    // Exibir todas as variáveis carregadas
    print(dotenv);
  } catch (e) {
    print('Erro: $e');
  }
}
