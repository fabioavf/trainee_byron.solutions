class Data {
  int dia, mes, ano;
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

  print('${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}');
  print('${dataCompra.dia}/${dataCompra.mes}/${dataCompra.ano}');
}
