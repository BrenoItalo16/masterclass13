import 'dart:math';

class VigenereCipher {
  String encode(String text, String key, List<List<String>> matrix) {
    List<String> letters = [];

    for (var i = 0; i < text.length; i++) {
      letters.add(
        matrix[getLetterIndex(text[i])][getLetterIndex(key[i])],
      );
    }

    return letters.join();
  }

  String decode(String text, String key, List<List<String>> matrix) {
    List<String> originalLetters = [];

    for (var i = 0; i < text.length; i++) {
      int keyIndex = getLetterIndex(key[i]);
      String encryptedLetter = text[i];

      // Procurar na linha da chave a letra criptografada
      int originalIndex = matrix[keyIndex].indexOf(encryptedLetter);

      // Adicionar a letra original à lista
      originalLetters.add(matrix[0][originalIndex]);
    }

    return originalLetters.join();
  }

  // Gerador de Key randômica.
  static String generateKey(int length) {
    const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    final random = Random();

    return List.generate(
        length, (index) => letters[random.nextInt(letters.length)]).join();
  }

  // Cria uma Matriz com o Alfabeto
  static List<List<String>> createMatrix() {
    const alfabeto = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

    // Matriz vazia
    List<List<String>> matriz = [];

    for (int i = 0; i < 26; i++) {
      String linha = alfabeto.substring(i) + alfabeto.substring(0, i);
      matriz.add(linha.split(''));
      // print(linha);
    }
    return matriz;
  }

  // Gera o index referente a letra do alfabeto [Ex: "A" : "0"]
  int getLetterIndex(String letter) {
    letter = letter.toUpperCase();
    const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var index = alphabet.indexOf(letter);
    return index;
  }
}
