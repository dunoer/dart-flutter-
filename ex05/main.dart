import 'livro.dart';
import 'pessoa.dart';

void main() {
  Pessoa c1 = new Pessoa('Duno', 33, 'Masculino');
  c1.fazerAniversario();
  Pessoa c2 = new Pessoa('Felipe', 2, 'Masculino');
  c2.fazerAniversario();
  c2.fazerAniversario();
  c2.fazerAniversario();
  c2.fazerAniversario();
  Livro l2 = new Livro(c2);
  l2.setAberto(true);
  l2.setTitulo('A unica coisa');
  l2.setAutor('George');
  l2.setTotPaginas(50);
  l2.setPagAtual(30);
  l2.avancarPag();
  l2.avancarPag();
  l2.avancarPag();
  l2.detalhes();
}
