//  Os dois ultimos números são digitos verificadores

class CpfValidator {
  bool isValid(String cpf) {
    //==================== PASSO 1 =====================

    //Remove os caracteres não numéricos
    cpf = cpf.replaceAll(RegExp(r'\D'), '');

    //Verifica se o CPF tem 11 dígitos
    if (cpf.length != 11) return false;

    //Transforma a String em uma lista de números
    //A função "map" aplica a função "int.parse" a cada elemento da lista
    List<int> numbers = cpf.split('').map(int.parse).toList();

    //=========== CALCULO DO PRIMEIR DÍGITO ============
    //9 primeiros dígitos da direita para a esquerda
    List<int> firstNineDigits = [];
    for (var i = 0; i < 9; i++) {
      firstNineDigits.insert(0, numbers[i]);
    }

    //Atribuir multiplicadores crescentes a partir de 2
    List<int> firstNineDigitsMultiplyed = [];
    for (int i = 0; i < 9; i++) {
      firstNineDigitsMultiplyed.add(firstNineDigits[i] * (i + 2));
    }

    //==================== PASSO 2 =====================

    // Soma todos os valores da lista firstNineDigitsMultiplyed
    int sum = firstNineDigitsMultiplyed.reduce((a, b) => a + b);

    //==================== PASSO 3 =====================

    // Calcula o resto da divisão por 11
    int rest = sum % 11;

    //==================== PASSO 4 =====================

    //Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
    // Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).
    int result = rest < 2 ? 0 : (11 - rest);

    //FirstCheckDigit
    bool firstCheckDigit =
        result.toString() == cpf[cpf.length - 2] ? true : false;

    //============ CALCULO DO SEUGNO DÍGITO =============

    //10 primeiros dígitos da direita para a esquerda
    List<int> firstTenDigits = [];
    for (var i = 0; i < 10; i++) {
      firstTenDigits.insert(0, numbers[i]);
    }

    //Atribuir multiplicadores crescentes a partir de 2
    List<int> firstTenDigitsMultiplyed = [];
    for (int i = 0; i < 10; i++) {
      firstTenDigitsMultiplyed.add(firstTenDigits[i] * (i + 2));
    }

    //==================== PASSO 2 =====================

    // Soma todos os valores da lista firstTenDigitsMultiplyed
    int sum2 = firstTenDigitsMultiplyed.reduce((a, b) => a + b);

    //==================== PASSO 3 =====================

    // Calcula o resto da divisão por 11
    int rest2 = sum2 % 11;

    //==================== PASSO 4 =====================

    //Se o resto da divisão for menor que 2, então o dígito é igual a 0 (Zero).
    // Se o resto da divisão for maior ou igual a 2, então o dígito verificador é igual a 11 menos o resto da divisão (11 - resto).
    int result2 = rest2 < 2 ? 0 : (11 - rest2);

    //FirstCheckDigit
    bool secondCheckDigit =
        result2.toString() == cpf[cpf.length - 1] ? true : false;
    // print(
    //     'O primeiro valor é: $firstCheckDigit e o segundo é: $secondCheckDigit.');

    //FINAL
    if (firstCheckDigit == true && secondCheckDigit == true) {
      return true;
    } else {
      return false;
    }
  }
}
