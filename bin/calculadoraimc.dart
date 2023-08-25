import 'package:calculadoraimc/calculadoraimc.dart' as calculadoraimc;

void main(List<String> arguments) {
  try {
    calculadoraimc.startImc();
  } catch (e) {
    print('Ocorreu um erro: $e');
  }
}
