import 'interface.dart';
import 'pessoa.dart';

class Livro implements Publicacao {
  //atribuitos
  String _titulo = '';
  String _autor = '';
  int _totPaginas = 0;
  int _pagAtual = 0;
  bool _aberto = false;
  Pessoa? _leitor;

  //Metodos getters e setters
  String getTitulo() {
    return this._titulo;
  }

  void setTitulo(String t) {
    this._titulo = t;
  }

  String getAutor() {
    return this._autor;
  }

  void setAutor(String a) {
    this._autor = a;
  }

  int getTotPaginas() {
    return this._totPaginas;
  }

  void setTotPaginas(int to) {
    this._totPaginas = to;
  }

  int getPagAtual() {
    return this._pagAtual;
  }

  void setPagAtual(int p) {
    this._pagAtual = p;
  }

  bool getAberto() {
    return this._aberto;
  }

  void setAberto(bool a) {
    this._aberto = a;
  }

  Pessoa? getLeitor() {
    return this._leitor;
  }

  void setLeitor(Pessoa l1) {
    this._leitor = l1;
  }

  @override
  void abrir() {
    this.setAberto(true);
  }

  @override
  void avancarPag() {
    this.setPagAtual(getPagAtual() + 1);
  }

  @override
  void fechar() {
    this.setAberto(false);
  }

  @override
  void folhear() {
    this.setPagAtual(getPagAtual());
    print('Pagina que está: ${this.getPagAtual()}');
  }

  @override
  void voltarPag() {
    if (getPagAtual() < 1) {
      print('Voce não pode mais voltar paginas');
    } else {
      setPagAtual(getPagAtual() - 1);
    }
  }

  void detalhes() {

    print('---- Caro leitor veja aqui detalhe');
  }
}
