import 'dart:math';

void executar(Function fnPar, Function fnImpar) {
  var sorteado = Random().nextInt(10);
  print('Valor: $sorteado');
  sorteado % 2 == 0 ? fnPar() : fnImpar();
}

main() {
  var minhaFnPar = () => print('Eita! O valor é par.');
  var minhaFnImpar = () => print('Legal! O valor é ímpar.');

  executar(minhaFnPar, minhaFnImpar);
}
