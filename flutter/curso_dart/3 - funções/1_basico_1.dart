import 'dart:math';

main() {
  somaComPrint(2, 3);

  somaComPrint(4, 5);

  somaDoisNumerosQuaisquer();
  somaDoisNumerosQuaisquer();
}

void somaComPrint(var a, var b) {
  print(a + b);
}

void somaDoisNumerosQuaisquer() {
  int n1 = Random().nextInt(11), n2 = Random().nextInt(11);
  print('Os valores sorteados foram $n1 e $n2.');
}
