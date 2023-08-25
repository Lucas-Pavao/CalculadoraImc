import 'dart:io';
import 'package:calculadoraimc/models/pessoa_model.dart';

void startImc() {
  Pessoa pessoa = Pessoa();
  try {
    print("Qual o seu nome ?");
    pessoa.nome = stdin.readLineSync()!;

    print("Qual o seu peso ?");
    pessoa.peso = double.parse(stdin.readLineSync()!);

    print("Qual o seu altura ?");
    pessoa.altura = double.parse(stdin.readLineSync()!);

    var imc = calculaImc(pessoa.altura!, pessoa.peso!);

    print('O IMC de ${pessoa.nome} é $imc');
  } catch (e) {
    print('Ocorreu um erro durante a entrada de dados: $e');
  }
}

double calculaImc(double altura, double peso) {
  if (altura <= 0 || peso <= 0) {
    throw ArgumentError("Altura e peso devem ser maiores que zero");
  }

  var imc = peso / (altura * altura);
  return imc;
}
