import 'pessoa.dart';

class Professor extends Pessoa {
  String _especialidade = '';
  double _salario = 0;

  //Metodos getter e setters
  String get especialidade => this._especialidade;

  set especialidade(String value) => this._especialidade = value;

  double get salario => this._salario;

  set salario(value) => this._salario = value;
  //Metodos açoes

  void aumentoSalario(double s) {
    salario += s;
    print('Seu novo salario ${salario}');
  }
}
