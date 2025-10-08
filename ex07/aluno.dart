import 'pessoa.dart';

class Aluno extends Pessoa {
  //Atribuitos aluno
  int _matricula = 0;
  String _curso = '';

  //Metodos getters e setter
  int get matricula => this._matricula;

  set matricula(int value) => this._matricula = value;

  String get curso => this._curso;

  set curso(value) => this._curso = value;
  //Metodos ações
  pagarMensalidade(double mensal) {
    print('Pagando mensalidade do Aluno ${nome} no valor de ${mensal}');
  }
}
