import 'aluno.dart';
import 'bolsista.dart';
import 'pessoa.dart';
import 'visitante.dart';

void main() {
  /* final v1 = new Visitante();
  v1.nome = 'Duno';
  v1.idade = 18;
  v1.sexo = 'Masculino';
  v1.status();

  final a1 = new Aluno();
  a1.nome = 'Duno';
  a1.pagarMensalidade(350.50);*/

  final b1 = new Bolsista();
  b1.nome = 'duno';
  b1.renovarBolsa();
  b1.pagarMensalidade(0);
}
