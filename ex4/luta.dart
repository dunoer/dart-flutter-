import 'dart:math';

import 'lutador.dart';

class Luta {
  //Atributos
  Lutador? _desafiado;
  Lutador? _desafiante;
  int rounds = 0;
  bool? aprovada;

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

  bool? getAprovada() {
    return this.aprovada;
  }

  void setAprovada(bool a) {
    this.aprovada = a;
  }

  //metodos publicos

  void marcarLuta(Lutador d1, Lutador d2) {
    if (d1.getCategoria() == d2.getCategoria() && d1 != d2) {
      this.aprovada = true;
      this._desafiado = d1;
      this._desafiante = d2;
    } else {
      this.aprovada = false;
      this._desafiado = null;
      this._desafiante = null;
    }
  }

  void lutar() {
    if (this.aprovada == true) {
      print('\n------ Integrante 1 -------');
      this._desafiado?.apresentar();
      print('\n------ Integrante 2 -------\n');
      this._desafiante?.apresentar();

      var aleatorio = Random();
      int vencedor = aleatorio.nextInt(3);

      switch (vencedor) {
        case 0:
          print('Numero aleatorio: ${vencedor}\n');
          print('----EMPATOU-----\n');
          this._desafiado?.empatarLuta();
          this._desafiante?.empatarLuta();

          print('--- Parciais apos luta ----');
          print('--> Lutador ${this._desafiado?.getNome()}\n');
          print('Vitorias: ${this._desafiado?.getVitoria()}');
          print('Derrota: ${this._desafiado?.getDerrotas()}');
          print('Empate: ${this._desafiado?.getEmpate()} \n');

          print('--> Lutador ${this._desafiante?.getNome()}\n');
          print('Vitorias: ${this._desafiante?.getVitoria()}');
          print('Derrota: ${this._desafiante?.getDerrotas()}');
          print('Empate: ${this._desafiante?.getEmpate()} \n');
          break;

        case 1:
          print('Numero aleatorio: ${vencedor}\n');
          print(
            'Lutador: ${this._desafiado?.getNome()} ganhou do lutador: ${this._desafiante?.getNome()}\n',
          );
          this._desafiado?.ganharLuta();
          this._desafiante?.perderLuta();

          print('--- Parciais apos luta ----');
          print('--> Lutador ${this._desafiado?.getNome()}\n');
          print('Vitorias: ${this._desafiado?.getVitoria()}');
          print('Derrota: ${this._desafiado?.getDerrotas()}');
          print('Empate: ${this._desafiado?.getEmpate()} \n');

          print('--> Lutador ${this._desafiante?.getNome()}\n');
          print('Vitorias: ${this._desafiante?.getVitoria()}');
          print('Derrota: ${this._desafiante?.getDerrotas()}');
          print('Empate: ${this._desafiante?.getEmpate()} \n');
          break;
        case 2:
          print('Numero aleatorio: ${vencedor}\n');
          print(
            'Lutador: ${this._desafiante?.getNome()} ganhou do lutador: ${this._desafiado?.getNome()}\n',
          );
          this._desafiante?.ganharLuta();
          this._desafiado?.perderLuta();

          print('--- Parciais apos luta ----');
          print('--> Lutador ${this._desafiante?.getNome()}\n');
          print('Vitorias: ${this._desafiante?.getVitoria()}');
          print('Derrota: ${this._desafiante?.getDerrotas()}');
          print('Empate: ${this._desafiante?.getEmpate()} \n');

          print('--> Lutador ${this._desafiado?.getNome()}\n');
          print('Vitorias: ${this._desafiado?.getVitoria()}');
          print('Derrota: ${this._desafiado?.getDerrotas()}');
          print('Empate: ${this._desafiado?.getEmpate()} \n');
          break;
      }
    } else {
      print('A luta não pode acontecer');
    }
  }
}
