class Data {
  int dia, mes, ano;

  Data({this.dia = 1, this.mes = 1, this.ano = 1970});

  String toString() {
    return '$dia/$mes/$ano';
  }
}

main() {
  var dataAniversario = new Data(dia: 4, mes: 1, ano: 1999);
  Data dataCompra = Data(dia: 23, mes: 12, ano: 2020);

  print('A data do aniversário é $dataAniversario.');
  print('A data da compra é $dataCompra.');
}
