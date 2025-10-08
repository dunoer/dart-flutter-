import 'pessoa.dart';

class Funcionario extends Pessoa {
  String _setor = '';
  bool _trabalhando = false;

  //metodos getters e setters
  String get setor => this._setor;

  set setor(String value) => this._setor = value;

  bool get trabalhando => this._trabalhando;

  set trabalhando(value) => this._trabalhando = value;

  //metodo acoes
  void mudarTrabalho() {
    trabalhando = !trabalhando;
    var condicao = (trabalhando)
        ? "Voce agora esta trabalhando"
        : "Agora voce esta de folga";
    print(condicao);
  }
}
