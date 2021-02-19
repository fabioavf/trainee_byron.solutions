import '6_carro.dart';

main() {
  var carro = new Carro();

  carro.frear();
  print('O carro está a ${carro.getVelocidadeAtual()}km/h.');

  carro.acelerar();
  carro.acelerar();
  print('O carro está a ${carro.getVelocidadeAtual()}km/h.');

  carro.acelerar();
  print('O carro está a ${carro.getVelocidadeAtual()}km/h.');

  carro.frear();
  print('O carro está a ${carro.getVelocidadeAtual()}km/h.');

  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  carro.acelerar();
  print('O carro está a ${carro.getVelocidadeAtual()}km/h.');

  print(
      'O carro ${carro.estaNoLimite() ? "está" : "não está"} no limite de velocidade.');

  carro.frear();
  carro.frear();
  carro.frear();
  carro.frear();
  print('O carro está a ${carro.getVelocidadeAtual()}km/h.');
  
  print(
      'O carro ${carro.estaNoLimite() ? "está" : "não está"} no limite de velocidade.');
}
