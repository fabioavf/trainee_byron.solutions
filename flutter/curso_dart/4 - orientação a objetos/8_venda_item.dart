import '8_produto.dart';

class VendaItem {
  int quantidade;
  double _preco;
  Produto produto;

  VendaItem({this.quantidade = 1, this.produto});

  double get preco {
    if (produto != null) {
      _preco = produto.precoComDesconto;
    }
    return _preco;
  }

  void set preco(double novoPreco) {
    if (novoPreco > 0) {
      _preco = novoPreco;
    }
  }
}
