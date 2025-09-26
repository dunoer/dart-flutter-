import 'interfarce.dart';
import 'dart:io';

class ControleRemoto implements Controlador {
  //atribuitos
  int _volume = 0;
  bool _ligando = true;
  bool _tocando = true;
  //Metodos especiais
  ControleRemoto() {
    this._volume = 50;
    this._ligando = false;
    this._tocando = false;
  }

  int getVolume() {
    return this._volume;
  }

  setVolume(int v) {
    this._volume = v;
  }

  bool getLigando() {
    return this._ligando;
  }

  setLigando(bool l) {
    this._ligando = l;
  }

  bool getTocando() {
    return this._tocando;
  }

  setTocando(bool t) {
    this._tocando = t;
  }

  @override
  void abrirMenu() {
    stdout.write(
      '--- MENU --- \n\n\nEsta ligado: ${this.getLigando() ? 'sim' : 'não'} \nEsta tocando? ${this.getTocando() ? 'sim' : 'não'} \nVolume: ${this.getVolume()} ',
    );
    for (int i = 0; i < this.getVolume(); i += 10) {
      stdout.write('|');
    }
  }

  @override
  void desligar() {
    this.setLigando(false);
  }

  @override
  void desligarMudo() {
    if (this.getLigando() && this.getVolume() == 0) {
      this.setVolume(50);
    }
  }

  @override
  void fecharMenu() {
    print('\n\n----- Fechando Menu ----');
  }

  @override
  void ligar() {
    this.setLigando(true);
  }

  @override
  void ligarMudo() {
    if (this.getLigando() && this.getVolume() > 0) {
      this.setVolume(0);
    }
  }

  @override
  void maisVolume() {
    if (this.getLigando()) {
      this.setVolume(this.getVolume() + 5);
    } else {
      print('Impossivel aumentar volume');
    }
  }

  @override
  void menosVolume() {
    if (this.getLigando() && this.getVolume() > 0) {
      this.setVolume(this.getVolume() - 5);
    } else {
      print('Impossivel diminuir volume');
    }
  }

  @override
  void pause() {
    if (this.getLigando() && this.getTocando()) {
      this.setTocando(false);
    }
  }

  @override
  void play() {
    if (this.getLigando() && !(this.getTocando())) {
      this.setTocando(true);
    }
  }
}
