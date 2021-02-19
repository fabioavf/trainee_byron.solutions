main() {
  var notas = [7.3, 5.4, 7.7, 8.1, 5.5, 4.9, 9.1, 10.0];
  var total = notas.reduce(somar);

  print(total);

  var nomes = ['Ana', 'José', 'Bia'];
  print(nomes.reduce(juntar));
}

double somar(double acumulador, double elemento) {
  return acumulador + elemento;
}

String juntar(String acumulador, String elemento) {
  return "$acumulador, $elemento";
}
