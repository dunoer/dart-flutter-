import 'aluno.dart';
import 'pessoa.dart';
import 'professor.dart';

void main() {
  //programa principal
  final p = new Aluno();
  p.nome = 'Duno';
  p.idade = 18;
  p.curso = 'Sistema de informação';
  p.fazerAniversario();
  print('Nome: ${p.nome} \nIdade: ${p.idade} \nCurso: ${p.curso}');
  final p1 = new Professor();
  p1.salario = 1500.10;
  p1.aumentoSalario(250.20);
  print(p1.salario);
}
