import 'dart:io';

void main() {
  Aluno c1 = new Aluno('Duno', 151542, 08760545640);
  c1.aplicarTeste();
  c1.status();
}

class Aluno {
  String nome = '';
  int codigo = 0;
  int cpf = 0;
  bool estudou = false;

  Aluno(String n, int c, int ce) {
    this.setNome(n);
    this.setCodigo(c);
    this.setCpf(ce);
  }

  bool getEstudou() {
    return estudou;
  }

  setEstudou(bool e) {
    estudou = e;
  }

  String getNome() {
    return nome;
  }

  setNome(String n) {
    nome = n;
  }

  int getCodigo() {
    return codigo;
  }

  setCodigo(int c) {
    codigo = c;
  }

  int getCpf() {
    return cpf;
  }

  setCpf(int ce) {
    cpf = ce;
  }

  void aplicarTeste() {
    stdout.write('Qual soma de  4 + 2');
    String? qt1 = stdin.readLineSync();
    int? resp1 = int.tryParse(qt1 ?? "");

    stdout.write('Qual soma de  1 + 2');
    String? qt2 = stdin.readLineSync();
    int? resp2 = int.tryParse(qt2 ?? "");

    stdout.write('Qual a soma de 1 + 1');
    String? qtd3 = stdin.readLineSync();
    int? resp3 = int.tryParse(qtd3 ?? '');

    if (resp1 == 6 && resp2 == 3 && resp3 == 2) {
      estudou = true;
    } else {
      estudou = false;
    }
    //int qtd2 = print('Qual soma de 1 +5');
    //int qtd3 = print('Qual soma de  1+ 1');
  }

  void status() {
    print(
      'Matricula Aluno: \nNome: $nome \nCodigo: $codigo \nCpf: $cpf \nEsse aluno estudou? $estudou',
    );
  }
}
