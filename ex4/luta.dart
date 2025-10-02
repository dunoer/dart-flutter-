import 'lutador.dart';

class Luta {
  //Atributos
  Lutador? _desafiado;
  Lutador? _desafiante;
  int rounds = 0;
  bool aprovada = true;

  //metodos especiais

  void setDesafiado(Lutador d1) {
    this._desafiado = d1;
  }

  Lutador? getDesafiado() {
    return this._desafiado;
  }

  void setDesafiante(Lutador d2) {
    this._desafiante = d2;
  }

  Lutador? getDesfiante() {
    return this._desafiante;
  }

  int getRounds() {
    return this.rounds;
  }

  void setRounds(int r) {
    this.rounds = r;
  }

  bool getAprovada() {
    return this.aprovada;
  }

  void setAprovada(bool a) {
    this.aprovada = a;
  }

  //metodos publicos

  void marcarLuta() {}
  void lutar() {
    if (this._desafiado == null || this._desafiante == null) {
      print('Marque a luta primeiro');
      return;
    }
  }
}
