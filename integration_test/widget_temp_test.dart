import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:temp_app/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Celsius to Fahrenheit conversion', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.textContaining("Digite o valor"), findsOneWidget);
    var txtField = find.byType(TextField);
    expect(txtField, findsOneWidget);
    await tester.tap(txtField);
    await tester.enterText(txtField, "0");
    //await tester.tap(find.text("Celsius para Fahrenheit"));
    await tester.tap(find.byKey(Key('btnCF')));
    await tester.pump();
    expect(find.text("32.0"), findsOneWidget);
  });

  testWidgets('Celsius to Kelvin conversion', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.textContaining("Digite o valor"), findsOneWidget);
    var txtField = find.byType(TextField);
    expect(txtField, findsOneWidget);
    await tester.tap(txtField);
    await tester.enterText(txtField, "0");
    //await tester.tap(find.text("Celsius para Fahrenheit"));
    await tester.tap(find.byKey(Key('btnCK')));
    await tester.pump();
    expect(find.text("273.0"), findsOneWidget);
  });
}
