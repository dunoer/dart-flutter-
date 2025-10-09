import 'lobo.dart';

class Cachorro extends Lobo {
  @override
  void emitirSom() {
    print('Au! Au! Au!');
  }

  void reagir({String? frase, int? hora, int? min, bool? dono}) {
    //Aqui caso passe parametro string ola ou outro qualquer
    if (frase != null) {
      if (frase == 'ola') {
        print('Abanar e latir');
        return;
      } else {
        print('Rosnar');
        return;
      }
    }

    //Aqui caso passe parametro de hora e min
    if (hora != null && min != null) {
      if (hora < 12) {
        print('abanar');
        return;
      } else if (hora >= 18) {
        print('Ignorar');
        return;
      } else {
        print('Abanar e latir');
        return;
      }
    }

    //Aqui caso passe parametro se é dono ou não
    if (dono != null) {
      if (dono == true) {
        print('Latir muito muito, feliz demais');
        return;
      } else {
        print('Muito bravooooo');
      }
    }
  }
}
