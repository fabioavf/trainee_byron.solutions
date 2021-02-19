main() {
  String nome = 'João';
  String status = 'aprovado';
  double nota = 9.2;

  String frase1 =
      nome + ' está ' + status + ' com nota ' + nota.toString() + '!';

  String frase2 = '$nome está $status com nota $nota!';

  print(frase1);
  print(frase2);

  print('1 + 1 = ${1 + 1}');
}
