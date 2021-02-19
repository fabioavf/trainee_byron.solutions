main() {
  int a = 7, b = 3, resultado = a + b;

  print(resultado);
  print(a - b);
  print(a * b);
  print(a / b);
  print(a % b);
  print(33 % 2);
  print(34 % 2);
  print(a + b * a - b / a);

  bool ehFragil = true, ehCaro = true;

  print(ehFragil && ehCaro);
  print(ehFragil || ehCaro);
  print(ehFragil ^ ehCaro);
  print(!ehFragil);
  print(!!ehCaro);
}
