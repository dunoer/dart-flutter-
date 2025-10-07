class Pessoa {
  //Atribuitos
  String _nome = '';
  int _idade = 0;
  String _sexo = '';

  //metodos getters e setters
  String getNome() {
    return this._nome;
  }

  void setNome(String n) {
    this._nome = n;
  }

  int getIdade() {
    return this._idade;
  }

  void setIdade(int i) {
    this._idade = i;
  }

  String getSexo() {
    return this._sexo;
  }

  void setSexo(String s) {
    this._sexo = s;
  }

  void fazerAniversario() {
    setIdade(this.getIdade() + 1);
    print(
      'PARABENS ${this._nome}!!! Você acaba de completar mais um ano de vida sua idade atual é: ${this.getIdade()}',
    );
  }
}
