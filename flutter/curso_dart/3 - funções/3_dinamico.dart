main() {
  juntar(1, 9);
  juntar('Bom', 'dia!');
  var resultado = juntar('O valor de PI é ', 3.14159);

  print(resultado);
}

juntar(a, b) {
  print(a.toString() + b.toString());
  return a.toString() + b.toString();
}
