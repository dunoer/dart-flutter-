import 'lutador.dart';

void main() {
  final lutadores = <Lutador>[];
  lutadores.add(Lutador('Duno', 'Brasil', 18, 58.0, 10, 1, 2));
  lutadores.add(Lutador('Felipe Gabriel', 'Brasil', 2, 80.0, 10, 2, 2));
  lutadores[1].setNome('Dujk');
  lutadores[1].ganharLuta();
  lutadores[1].ganharLuta();
  lutadores[1].ganharLuta();

  lutadores[1].status();
}
