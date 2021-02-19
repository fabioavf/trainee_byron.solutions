const incremento = 10;
const decremento = 10;

class Carro {
  final int velocidadeMaxima;
  int velocidadeAtual = 0;

  Carro([this.velocidadeMaxima = 120]);

  int acelerar() {
    if (velocidadeAtual <= velocidadeMaxima - incremento)
      velocidadeAtual += incremento;
  }

  int frear() {
    if (velocidadeAtual >= 0 + decremento) velocidadeAtual -= decremento;
  }

  bool estaNoLimite() {
    if (velocidadeAtual == velocidadeMaxima)
      return true;
    else
      return false;
  }

  int getVelocidadeAtual() {
    return velocidadeAtual;
  }
}
