const delta = 10;

class Carro {
  final int _velocidadeMaxima;
  int _velocidadeAtual = 0;

  Carro([this._velocidadeMaxima = 120]);

  bool estaNoLimite() {
    if (_velocidadeAtual == _velocidadeMaxima)
      return true;
    else
      return false;
  }

  int get velocidadeAtual {
    return _velocidadeAtual;
  }

  void set velocidadeAtual(int novaVelocidade) {
    bool deltaValido = (_velocidadeAtual - novaVelocidade) <= delta;
    if (deltaValido && novaVelocidade >= 0 && novaVelocidade <= 120)
      this._velocidadeAtual = novaVelocidade;
  }
}
