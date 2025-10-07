import 'livro.dart';
import 'pessoa.dart';

void main() {
  Pessoa c1 = new Pessoa('Duno', 33, 'Masculino');
  Livro l2 = new Livro();
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
