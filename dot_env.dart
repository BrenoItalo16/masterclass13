import 'dart:io';

class DotEnv {
  final Map<String, dynamic> _variables = {};

  DotEnv(String filePath) {
    _load(filePath);
  }

  void _load(String filePath) {
    final file = File(filePath);

    if (!file.existsSync()) {
      throw Exception('Arquivo .env não encontrado: $filePath');
    }

    final lines = file.readAsLinesSync();

    for (var line in lines) {
      line = line.trim();

      // Ignorar linhas vazias ou comentários
      if (line.isEmpty || line.startsWith('#')) continue;

      // Separar chave e valor
      final splitIndex = line.indexOf('=');
      if (splitIndex == -1) continue;

      final key = line.substring(0, splitIndex).trim();
      final value = line.substring(splitIndex + 1).trim();

      // Determinar o tipo de valor
      _variables[key] = _parseValue(value);
    }
  }

  dynamic _parseValue(String value) {
    if (value.toLowerCase() == 'true') return true;
    if (value.toLowerCase() == 'false') return false;
    if (int.tryParse(value) != null) return int.parse(value);
    if (double.tryParse(value) != null) return double.parse(value);
    return value; // Caso nenhum tipo corresponda, retorna como string
  }

  dynamic operator [](String key) => _variables[key];

  @override
  String toString() => _variables.toString();
}
