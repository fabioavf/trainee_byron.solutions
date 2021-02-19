main() {
  saudarPessoa(nome: 'João', idade: 33);
  saudarPessoa(idade: 47, nome: 'Maria');

  imprimirData();
  imprimirData(ano: 2020);
  imprimirData(ano: 2020, mes: 12);
  imprimirData(ano: 2020, mes: 12, dia: 12);
}

saudarPessoa({String nome, int idade}) {
  print('Olá, $nome, nem, parece que você tem $idade anos!');
}

imprimirData({int dia = 1, int ano = 1970, int mes = 1}) {
  print('$dia/$mes/$ano');
}
