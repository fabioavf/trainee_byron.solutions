import 'dart:ffi';

import 'dart:io';

main() {
    const PI = 3.14159;

    stdout.write("Informe o raio: ");

    var entradaDoUsuario = stdin.readLineSync();
    final double raio = double.parse((entradaDoUsuario));

    print("O valor do raio é " + raio.toString());

    final area = PI * raio * raio;

    print("O valor da área é " + area.toString());
}
