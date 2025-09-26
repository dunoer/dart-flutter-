class ControleRemoto implements Controlador{
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

  
}
