abstract class Pessoa {
  //atribuitos
  String _nome = '';
  int _idade = 0;
  String _sexo = '';

  //metodos getters e setters
  String get nome => this._nome;

  set nome(String value) => this._nome = value;

  int get idade => this._idade;

  set idade(value) => this._idade = value;

  String get sexo => this._sexo;

  set sexo(value) => this._sexo = value;

  //Metodos acoes

  fazeraniversario() {
    idade++;
  }

  status() {
    print('Nome: ${nome} \nIdade: ${idade} \nSexo: ${sexo}');
  }
}
