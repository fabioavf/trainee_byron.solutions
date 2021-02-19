import 'dart:math';

main() {
  for (int i = 0; i < 10; i++) {
    var nota = Random().nextInt(11);

    if (nota >= 7) {
      print('Nota $nota, aprovado!');
    } else if (nota >= 5) {
      print('Nota $nota, recuperação!');
    } else {
      print('Nota $nota, reprovado!');
    }
  }
}
