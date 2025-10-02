import 'luta.dart';
import 'lutador.dart';

void main() {
  final lutadores = <Lutador>[];
  lutadores.add(Lutador('Duno', 'Brasil', 18, 80.0, 10, 1, 2));
  lutadores.add(Lutador('Felipe Gabriel', 'Brasil', 2, 80.0, 10, 2, 2));

  Luta ufc1 = new Luta();
  ufc1.marcarLuta(lutadores[0], lutadores[1]);
  ufc1.lutar();
}
