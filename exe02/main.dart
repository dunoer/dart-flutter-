import 'dart:io';

void main() {
  int? nume;
  do {
    stdout.write(
      '--- Digite o que deseja --- \n1-Abrir nova conta \n0- Sair \n',
    );
    String? entrada = stdin.readLineSync();
    nume = int.tryParse(entrada ?? "");
    if (nume == null || (nume != 0 && nume != 1)) {
      print(' \n\nERRO: Por favor digite numero 1 ou 0\n\n');
      continue;
    }
  } while (nume != 1 && nume != 0);

  if (nume == 1) {
    Conta c1 = new Conta();
    c1.abrirConta();
  } else {
    print('----Fim do Programa--------');
  }
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

  setNome(entrada) {
    nome = entrada;
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
      stdout.write(
        '----Processando depostito --------- \n\n\nQual valor deseja depositar?  ',
      );
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
    this.meusdados();
  }

  void saque() {
    if (this.status && this.saldo > 0) {
      stdout.write(
        '\n\n ----Processando saque ------ \n\nQual valor deseja sacar?  --Saldo disponivel: ${this.saldo} ',
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
    meusdados();
  }

  void abrirConta() {
    setStatus(true);
    stdout.write('--> Digite seu nome: ');
    String? entrada = stdin.readLineSync();
    setNome(entrada);

    String? entrada2;
    do {
      stdout.write(
        '--> Digite tipo de conta cc ou cp: Conta corrente ou conta poupança ',
      );
      entrada2 = stdin.readLineSync();
      if (entrada2 == '' || (entrada2 != 'cp' && entrada2 != 'cc')) {
        print('\n\nERRO: Por favor digite cc ou cp');
        continue;
      }
    } while (entrada2 != 'cc' && entrada2 != 'cp');
    setTipoConta(entrada2);
    if (tipoConta == 'cc') {
      saldo += 50;
      int bonus = 50;
      print(
        '\n--Parabéns você acaba de criar sua conta e ganhou R\$$bonus para começar a usar\n\n',
      );
    } else {
      saldo += 150;
      int bonus2 = 150;
      print(
        '\n--Parabéns você acaba de criar sua conta e ganhou R\$$bonus2 para começar a usar\n\n',
      );
    }
    int? caso;
    do {
      stdout.write(
        'O que deseja fazer agora: \n1- Depositar \n2-Sacar \n3-Pagar mensalidade \n4-Consultar minha conta \n5-FecharConta\n\n',
      );
      String? entrada3 = stdin.readLineSync();
      caso = int.tryParse(entrada3 ?? "");
      if (caso == null ||
          (caso != 1 && caso != 2 && caso != 3 && caso != 4 && caso != 5)) {
        print('\n\nERRO, por favor digite um numero entre 1 e 5');
        continue;
      }
    } while (caso != 1 && caso != 2 && caso != 3 && caso != 4 && caso != 5);
    switch (caso) {
      case 1:
        depositar();
        break;
      case 2:
        saque();
        break;
      case 3:
        pagarMensal();
        break;
      case 4:
        meusdados();
        break;
      case 5:
        fecharConta();
      default:
        print('');
    }
  }

  void fecharConta() {
    if (this.saldo == 0) {
      this.status = false;
    } else if (this.saldo > 0) {
      stdout.write(
        'Você deve fazer o saque do saldo na conta: ${this.saldo} \n Deseja realizar agora? Digite sim ou nao --> ',
      );
      String? entrada4 = stdin.readLineSync();
      if (entrada4 == 'sim') {
        print(
          '\n\n---Realizando saque-----\n\n -------Fechando sua conta -----\n\n',
        );
        saldo = saldo - saldo;
        this.status = false;
      }
    } else {
      print('Você nao pode fechar a conta pois tem saldo negativo');
    }
    meusdados();
  }

  void pagarMensal() {
    if (this.tipoConta == 'cc' && this.saldo >= 12) {
      this.saldo -= 12;
    } else if (this.saldo >= 20) {
      this.saldo -= 20;
    }
    meusdados();
  }

  void meusdados() {
    print(
      '---- Dados da Conta: ----- \nNome: $nome \nTipo de Conta: $tipoConta \nSaldo: $saldo \nConta esta ativa? ${this.status ? "Sim" : "Não"}',
    );
  }
}
