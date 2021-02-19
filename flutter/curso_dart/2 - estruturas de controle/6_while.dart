import 'dart:io';

main() {
  String digitado;

  int a = 0;

  while (digitado != 'sair') {
    stdout.write('Digite algo ou "sair": ');
    digitado = stdin.readLineSync();
  }

  do {
    stdout.write('Digite algo ou "sair": ');
    digitado = stdin.readLineSync();
  } while (digitado != 'sair');

  print('\nFim!');
}
