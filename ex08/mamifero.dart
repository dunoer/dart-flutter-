import 'animal.dart';

class Mamifero extends Animal {
  //atribuitos
  String _corPelo = '';

  //Getters e Setters//
  String get corPelo => this._corPelo;
  set corPelo(value) => this._corPelo = value;

  @override
  void emitirSom() {
    print('Som de mamifero');
  }
}
