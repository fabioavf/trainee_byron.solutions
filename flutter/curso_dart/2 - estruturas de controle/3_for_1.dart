main() {
  for (int i = 0; i < 10; i += 2) {
    print('i = $i');
  }

  print('Fim!\n');

  for (int i = 100; i >= 0; i -= 4) {
    print('i = $i');
  }

  print('Fim!\n');

  int b = 0;

  for (; b <= 10; b++) {
    print('b = $b');
  }

  print('[FORA] b = $b');

  print('Fim!');
}
