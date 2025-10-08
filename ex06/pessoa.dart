class Pessoa {
  String _nome = '';
  int _idade = 0;
  String _sexo = '';

  //metodo getter e setters
  String get nome => this._nome;

  set nome(n) => this._nome = n;

  int get idade => this._idade;

  set idade(i) => this._idade = i;

  String get sexo => this._sexo;

  set sexo(s) => this._sexo = s;

  //metodo construtor

  //metodo ação
  fazerAniversario() {
    idade++;
    print('Seu nome ${this.nome} sua idade ${this.idade}');
  }
}
