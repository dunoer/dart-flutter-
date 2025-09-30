class Lutador {
  //Atribuitos
  String? _nome;
  String? _nacionalidade;
  int? _idade;
  double? _peso;
  String? _categoria;
  int? _vitorias;
  int? _empate;
  int? _derrotas;

  //Metodos getters setters

  String? getNome() {
    return this._nome;
  }

  void setNome(String n) {
    this._nome = n;
  }

  String? getNacionalidade() {
    return this._nacionalidade;
  }

  void setNacionalidade(String na) {
    this._nacionalidade = na;
  }

  int? getIdade() {
    return this._idade;
  }

  void setIdade(int i) {
    this._idade = i;
  }

  double? getPeso() {
    return this._peso;
  }

  void setPeso(double p) {
    this._peso = p;
  }

  String? getCategoria() {
    return this._categoria;
  }

  void setCategoria(String c) {
    this._categoria = c;
  }

  int? getVitoria() {
    return this._vitorias;
  }

  void setVitoria(int v) {
    this._vitorias = v;
  }

  int? getDerrotas() {
    return this._derrotas;
  }

  void setDerrotas(int d) {
    this._derrotas = d;
  }

  int? getEmpate() {
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

  //Metodos
  void apresentar() {}
  void status() {}
  void ganharLuta() {}
  void perderLuta() {}
  void empatarLuta() {}
}
