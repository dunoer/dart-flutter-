import 'cachorro.dart';
import 'lobo.dart';
import 'mamifero.dart';

void main() {
  //Programa principal

  final m = new Mamifero();
  final l = new Lobo();
  final c = new Cachorro();

  m.emitirSom();
  l.emitirSom();
  c.emitirSom();

  c.idade = 12;
  print(c.idade);
}
