import 'package:calculadoraimc/calculadoraimc.dart';
import 'package:calculadoraimc/models/pessoa_model.dart';
import 'package:test/test.dart';

void main() {
  test('calculateimc', () {
    expect(calculaImc(1.54, 57), 24.00);
  });

  test('calculateimc with negative height', () {
    expect(() => calculaImc(-1.54, 57), throwsA(isA<ArgumentError>()));
  });

  test('calculateimc with zero weight', () {
    expect(() => calculaImc(1.54, 0), throwsA(isA<ArgumentError>()));
  });

  test('calculateimc with zero height', () {
    expect(() => calculaImc(0, 57), throwsA(isA<ArgumentError>()));
  });

  test('calculateimc with negative weight and height', () {
    expect(() => calculaImc(-1.54, -57), throwsA(isA<ArgumentError>()));
  });

  test('calculateimc with large height and weight', () {
    expect(calculaImc(10.0, 1000), closeTo(0.1, 0.01));
  });

  test('calculateimc with decimal values', () {
    expect(calculaImc(1.65, 63.5), closeTo(23.3, 0.1));
  });

  test('calculateimc with very low height and weight', () {
    expect(calculaImc(0.1, 1), closeTo(10000, 0.1));
  });

  test('Pessoa class attributes', () {
    Pessoa pessoa = Pessoa();
    pessoa.nome = 'Alice';
    pessoa.peso = 50;
    pessoa.altura = 1.60;

    expect(pessoa.nome, 'Alice');
    expect(pessoa.peso, 50);
    expect(pessoa.altura, 1.60);
  });
}
