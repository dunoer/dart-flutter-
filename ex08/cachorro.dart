import 'lobo.dart';

class Cachorro extends Lobo {
  @override
  void emitirSom() {
    print('Au! Au! Au!');
  }

  void reagir({String? frase, int? hora, int? min}) {
    if (frase != null && frase == 'ola') {
      print('Abanar e latir');
      return;
    } else {
      print('Rosnar');
    }
    if (hora != null && min != null && hora < 12) {
      print('abanar');
      return;
    } else if (hora != null && hora >= 18) {
      print('Ignorar');
      return;
    } else {
      print('Abanar e latir');
    }
  }
}
