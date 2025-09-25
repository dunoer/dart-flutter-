import 'dart:io';

void main() {
  Conta c1 = new Conta();
  c1.abrirConta();
  c1.tipoConta = 'cc';
  c1.nome = 'Duno';
  c1.depositar();
  c1.saque();
  c1.meusdados();
}

class Conta {
  int numConta = 0;
  String nome = '';
  String tipoConta = '';
  int saldo = 0;
  bool status = false;

  Conta() {
    this.status = false;
    this.saldo = 0;
  }
  bool getStatus() {
    return status;
  }

  setStatus(s) {
    status = s;
  }

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

  void depositar() {
    if (this.status) {
      stdout.write('Qual valor deseja depositar?  ');
      String? dg1 = stdin.readLineSync();
      int? valor = int.tryParse(dg1 ?? "");
      if (valor == null || valor <= 0) {
        print('Valor de deposivo invalido');
        return;
      }
      this.saldo += valor;
    } else {
      print('Sua Conta esta fechada');
    }
  }

  void saque() {
    if (this.status && this.saldo > 0) {
      stdout.write(
        'Qual valor deseja sacar?  --Saldo disponivel: ${this.saldo} ',
      );

      String? dg2 = stdin.readLineSync();
      int? saque = int.tryParse(dg2 ?? "");
      if (saque == null || saque <= 0) {
        print('Saque invalido');
        return;
      }
      if (saque <= this.saldo) {
        this.saldo -= saque;
      } else {
        print(
          'Você não tem dinheiro suficiente para realizar esse saque  --Saldo disponivel: ${this.saldo}',
        );
      }
    } else {
      print('Sua conta esta fechada');
    }
  }

  void abrirConta() {
    this.status = true;
    if (this.tipoConta == 'cc') {
      this.saldo += 50;
    } else {
      this.saldo += 150;
    }
  }

  void fecharConta() {
    if (this.saldo == 0) {
      this.status = false;
    } else if (this.saldo > 0) {
      print('Você deve fazer o saque do saldo na conta ${this.saldo}');
    } else {
      print('Você nao pode fechar a conta pois tem saldo negativo');
    }
  }

  void pagarMensal() {
    if (this.tipoConta == 'cc') {
      this.saldo -= 12;
    } else {
      this.saldo -= 20;
    }
  }

  void meusdados() {
    print(
      '-- Dados da Conta: -- \nNome: $nome \nTipo de Conta: $tipoConta \nSaldo: $saldo',
    );
  }
}
