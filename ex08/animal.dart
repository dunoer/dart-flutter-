abstract class Animal {
  //Atribuitos animal
  double _peso = 0.0;
  int _idade = 0;
  int _membros = 0;
  //Metodos getters e setter

  double get peso => this._peso;

  set peso(double value) => this._peso = value;

  int get idade => this._idade;

  set idade(value) => this._idade = value;

  int get membros => this._membros;

  set membros(value) => this._membros = value;

  //metodos acoes

  void emitirSom();
}
