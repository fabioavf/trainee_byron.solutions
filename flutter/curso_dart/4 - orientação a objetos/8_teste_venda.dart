import '8_cliente.dart';
import '8_produto.dart';
import '8_venda.dart';
import '8_venda_item.dart';

main() {
  var venda = new Venda(
      cliente: Cliente(nome: 'José Filho', cpf: '112.845.914-94'),
      itens: [
        VendaItem(
            quantidade: 5,
            produto: Produto(
                codigo: 2194,
                nome: 'Escova de dente',
                preco: 10.00,
                desconto: 0.05)),
        VendaItem(
            quantidade: 2,
            produto: Produto(
                codigo: 5231,
                nome: 'Desodorante',
                preco: 18.00,
                desconto: 0.06)),
        VendaItem(
            quantidade: 3,
            produto: Produto(
                codigo: 7462, nome: 'Shampoo', preco: 25.00, desconto: 0.1))
      ]);

  print('O valor total da venda é ${venda.valorTotal}');
  print('Nome do primeiro produto: ${venda.itens[0].produto.nome}');
  print('O CPF do cliente é: ${venda.cliente.cpf}');
}
