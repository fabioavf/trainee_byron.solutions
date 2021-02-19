main() {
  var aprovados = ["Ana", "Carlos", "Daniel", "Rafael"];

  print(aprovados is List);
  print(aprovados);
  print(aprovados.elementAt(2));
  print(aprovados[2]);

  var telefones = {
    'Default': '+XX (XX) XXXXX-XXXX',
    'João': '+55 (35) 99882-2049',
    'Maria': '+55 (35) 21334-1234'
  };

  print(telefones is Map);
  print(telefones);
  print(telefones['João']);
  print(telefones.length);
  print(telefones.values);
  print(telefones.keys);

  var times = {'Vasco', 'Flamengo', 'Fortaleza', 'São Paulo'};

  print(times is Set);
  print(times.length);
  times.add('Palmeiras');
  print(times.length);
  print(times.contains('Vasco'));
  print(times.first);
  print(times.last);
}
