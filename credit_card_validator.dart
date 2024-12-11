class CreditCardValidator {
  bool isValid(String ccNumber) {
    //==================== PASSO 1 =====================
    // Remove caracteres não numéricos
    ccNumber = ccNumber.replaceAll(RegExp(r'\D'), '');

    // Converte a string em uma lista de 16 dígitos
    List<int> allDigits = ccNumber.split('').map(int.parse).toList();

    // Pega o último dígito da lista
    int lastDigit = allDigits.removeLast();

    //==================== PASSO 2 =====================
    // Aplica multiplicadores alternados começando pelo penúltimo dígito
    for (int i = allDigits.length - 1; i >= 0; i -= 2) {
      allDigits[i] *= 2;
      if (allDigits[i] > 9) {
        //Subtrair o 9 dos dígitos maior que 9 é o
        //equivalente  Somar os dígitos diretamente
        allDigits[i] -= 9;
      }
    }

    //==================== PASSO 3 =====================
    // Soma todos os dígitos
    int sumOfAllNumbers = allDigits.reduce((a, b) => a + b);

    // Calcula o dígito esperado
    int expectedDigit = (10 - (sumOfAllNumbers % 10)) % 10;

    //==================== RETORNO FINAL =====================
    return lastDigit == expectedDigit;
  }
}
