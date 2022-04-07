import 'package:flutter_test/flutter_test.dart';
import 'package:temp_app/functions.dart';

void main() {
  group('Conversor de Temperatu', () {
    test('teste de celsius para fahrenheit', () {
      expect(Functions.paraFahrenheit(0), 32);
    });

    test('teste de celsius para kelvin', () {
      expect(Functions.paraKelvin(0), 273);
    });
  });
}
