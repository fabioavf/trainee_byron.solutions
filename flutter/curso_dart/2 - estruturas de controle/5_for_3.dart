main() {
  Map<String, double> notas = {
    'João Pedro': 9.1,
    'Maria Augusta': 4.3,
    'Ana Silva': 6.4,
    'Roberto Andrade': 8.8,
    'Pedro Firmino': 9.9
  };

  for (String nome in notas.keys) {
    print('Nome do aluno é $nome');
  }

  print('\n');

  for (var nota in notas.values) {
    print('A nota é $nota');
  }
  
  print('\n');

  for (var registro in notas.entries) {
    print('O ${registro.key} tem nota ${registro.value}');
  }
}
