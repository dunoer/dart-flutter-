import 'cachorro.dart';
import 'lobo.dart';
import 'mamifero.dart';

void main() {
  //Programa principal

  final m = new Mamifero();
  final l = new Lobo();
  final c = new Cachorro();

  c.reagir(hora: 10, min: 40);
  c.reagir(dono: true);
}
