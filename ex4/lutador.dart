class Lutador {
  //Atribuitos
  String _nome = '';
  String _nacionalidade = '';
  int _idade = 0;
  double _peso = 0.0;
  String _categoria = 'jk';
  int _vitorias = 0;
  int _empate = 0;
  int _derrotas = 0;

  //Metodos getters setters

  String getNome() {
    return this._nome;
  }

  void setNome(String n) {
    this._nome = n;
  }

  String getNacionalidade() {
    return this._nacionalidade;
  }

  void setNacionalidade(String na) {
    this._nacionalidade = na;
  }

  int getIdade() {
    return this._idade;
  }

  void setIdade(int i) {
    this._idade = i;
  }

  double getPeso() {
    return this._peso;
  }

  void setPeso(double p) {
    this._peso = p;
    setCategoria();
  }

  String getCategoria() {
    return this._categoria;
  }

  void setCategoria() {
    final pes = this._peso;
    if (pes < 52.2) {
      this._categoria = ('Invalido');
    } else if (pes <= 70.3) {
      this._categoria = ('Peso leve');
    } else if (pes <= 83.9) {
      this._categoria = ('Peso medio');
    } else if (pes <= 120.2) {
      this._categoria = ('Peso pesado');
    } else {
      this._categoria = ('Invalido');
    }
  }

  int getVitoria() {
    return this._vitorias;
  }

  void setVitoria(int v) {
    this._vitorias = v;
  }

  int getDerrotas() {
    return this._derrotas;
  }

  void setDerrotas(int d) {
    this._derrotas = d;
  }

  int getEmpate() {
    return this._empate;
  }

  void setEmpate(int e) {
    this._empate = e;
  }

  //Metodo Construtor
  Lutador(String n, String na, int i, double p, int v, int d, int e) {
    this.setNome(n);
    this.setNacionalidade(na);
    this.setIdade(i);
    this.setPeso(p);
    this.setVitoria(v);
    this.setDerrotas(d);
    this.setEmpate(e);
  }

  //Metodos espciais
  void apresentar() {
    print('\n--- Apresentação Lutador: ------');
    print('CHEGOU A HORA! Apresentamos o lutador: ${this.getNome()}');
    print('Diretamente de: ${this.getNacionalidade()}');
    print('Com ${this.getIdade()} anos');
    print('Pesando: ${this.getPeso()} kg');
    print('\n--- Restrospectiva: ---\n');
    print('Vitorias: ${this.getVitoria()}');
    print('Derrotas: ${this.getDerrotas()}');
    print('Empates: ${this.getEmpate()}\n');
  }

  void status() {}

  void ganharLuta() {
    this.setVitoria(getVitoria() + 1);
  }

  void perderLuta() {
    this.setDerrotas(getDerrotas() + 1);
  }

  void empatarLuta() {
    this.setEmpate(getEmpate() + 1);
  }
}
