import 'package:flutter_test/flutter_test.dart';
import 'package:temp_app/utils.dart';

void main() {
  test('converte de celsius para fahrenheit', () {
    double v = Utils.toFahrenheit(0);
    expect(v, 32.0);
  });

  
}
