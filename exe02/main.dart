void main() {
  Conta maria = new Conta();
  maria.depositar(200);
  maria.saque(100);
  maria.nome = 'Maria';
  maria.tipoConta = 'Poupança';
  maria.meusdados();
}

class Conta {
  int numConta = 0;
  String nome = '';
  String tipoConta = '';
  int saldo = 0;

  int getNumConta() {
    return numConta;
  }

  setNumConta(n) {
    numConta = n;
  }

  String getNome() {
    return nome;
  }

  setNome(no) {
    nome = no;
  }

  String getTipoConta() {
    return tipoConta;
  }

  setTipoConta(ti) {
    tipoConta = ti;
  }

  int getSaldo() {
    return saldo;
  }

  setSaldo(s) {
    saldo = s;
  }

  void depositar(int di) {
    this.saldo = saldo + di;
  }

  void saque(int sa) {
    this.saldo = saldo - sa;
  }

  void meusdados() {
    print(
      '-- Dados da Conta: -- \nNome: $nome \nTipo de Conta: $tipoConta \nSaldo: $saldo',
    );
  }
}
