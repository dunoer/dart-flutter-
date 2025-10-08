import 'aluno.dart';

class Bolsista extends Aluno {
  //Atribuitos
  int _bolsa = 0;

  //Metodos getters e setters
  int get bolsa => this._bolsa;
  set bolsa(int value) => this._bolsa = value;

  //Metodos e acoes

  void renovarBolsa() {
    print('Caro ${nome} renovando sua bolsa........');
  }

  @override
  void pagarMensalidade(double) {
    print('Você é um aluno bolsista voce nao paga mensalidade. Parabens!!!!!');
  }
}
