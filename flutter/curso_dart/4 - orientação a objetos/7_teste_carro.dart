import '7_carro.dart';

main() {
  var carro = new Carro();

  print('O carro está a ${carro.velocidadeAtual}km/h.');

  carro.velocidadeAtual = 20;
  print('O carro está a ${carro.velocidadeAtual}km/h.');

  carro.velocidadeAtual = 30;
  print('O carro está a ${carro.velocidadeAtual}km/h.');

  carro.velocidadeAtual = 20;
  print('O carro está a ${carro.velocidadeAtual}km/h.');

  carro.velocidadeAtual = 120;
  print('O carro está a ${carro.velocidadeAtual}km/h.');

  print(
      'O carro ${carro.estaNoLimite() ? "está" : "não está"} no limite de velocidade.');

  carro.velocidadeAtual = 80;
  print('O carro está a ${carro.velocidadeAtual}km/h.');

  print(
      'O carro ${carro.estaNoLimite() ? "está" : "não está"} no limite de velocidade.');
}
