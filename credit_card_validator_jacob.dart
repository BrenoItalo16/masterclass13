// MOD10 - Validação de Cartão de Crédito
class CreditCardValidatorJacob {
  bool isValid(String ccNumber) {
    //==================== PASSO 1 =====================

    //Remove os caracteres não numéricos
    ccNumber = ccNumber.replaceAll(RegExp(r'\D'), '');

    //Transforma o texto em inteiro
    //[4, 9, 1, 6, 6, 4, 1, 8, 5, 9, 3, 6, 9, 0, 8, 0]
    List<int> allDigits = ccNumber.split('').map(int.parse).toList();

    //Pegar o ultimo dígito
    int lastDigit = allDigits.last; //Output: 0

    //==================== PASSO 2 =====================
    //Multiplicar os dígitos por uma sequência alternada (1 e 2)
    // • Exclua o último dígito do número, pois ele será usado apenas para validação
    allDigits.removeLast();
    // List<int> digitsWithoutLast = allDigits;
    List<int> digitsWithEvenNumberMultipliedByTwo = allDigits;

    // • Multiplique os dígitos nas posições ímpares por 1.
    // • Multiplique os dígitos nas posições pares por 2.
    for (var i = 0; i < digitsWithEvenNumberMultipliedByTwo.length; i++) {
      if (digitsWithEvenNumberMultipliedByTwo[i].isEven) {
        // Verifica se é par
        digitsWithEvenNumberMultipliedByTwo[i] *= 2;
        // Se o resultado da multiplicação for maior ou igual a 10, some os dígitos do resultado.
        if (digitsWithEvenNumberMultipliedByTwo[i] >= 10) {
          int firstIntDigit =
              int.parse(digitsWithEvenNumberMultipliedByTwo[i].toString()[0]);
          int secondIntDigit =
              int.parse(digitsWithEvenNumberMultipliedByTwo[i].toString()[1]);

          int locaSum = firstIntDigit + secondIntDigit;
          digitsWithEvenNumberMultipliedByTwo[i] = locaSum;
        }
      }
    }

    //==================== PASSO 3 =====================
    //Some todos os resultados obtidos no passo anterior. Depois,
    //calcule o resto da divisão dessa soma por 10.
    int sumOfAllNumbers = 0;
    for (var i = 0; i < digitsWithEvenNumberMultipliedByTwo.length; i++) {
      sumOfAllNumbers =
          sumOfAllNumbers + digitsWithEvenNumberMultipliedByTwo[i];
    }
    //Dividir a soma por 10 e pegar o resto
    int rest = sumOfAllNumbers % 10;

    //==================== PASSO 4 =====================
    //Subtraia o resto obtido no passo anterior de 10. Se o resto for 0,
    //mantenha o resultado como 0
    int substractRest = 10 - rest;

    //==================== RETORNO FINAL =====================
    if (lastDigit != substractRest) {
      return false;
    } else {
      return true;
    }
  }
}
