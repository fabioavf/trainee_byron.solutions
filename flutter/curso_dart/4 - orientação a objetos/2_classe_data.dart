class Data {
  int dia, mes, ano;

  String obter() {
    return '$dia/$mes/$ano';
  }

  String toString() {
    return this.obter();
  }
}

main() {
  var dataAniversario = new Data();

  dataAniversario.dia = 27;
  dataAniversario.mes = 4;
  dataAniversario.ano = 2001;

  Data dataCompra = Data();

  dataCompra.dia = 23;
  dataCompra.mes = 12;
  dataCompra.ano = 2020;

  String d1 = dataAniversario.obter();

  print('A data do aniversário é $d1.');
  print('A data da compra é ${dataCompra.obter()}.');

  print(dataCompra);
}
