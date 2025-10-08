import 'pessoa.dart';

class Aluno extends Pessoa {
  int _matri = 0;
  String _curso = '';

  //metodos getters e setters
  int get matri => this._matri;

  set matri(int value) => this._matri = value;

  String get curso => this._curso;

  set curso(value) => this._curso = value;

  //metodos acoes
  cancelarMatricula() {
    print('Sua matricula foi cancelada');
  }
}
