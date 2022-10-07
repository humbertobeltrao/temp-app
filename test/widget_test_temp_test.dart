import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:temp_app/main.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  /*IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Temp converter Celsius to Fahrenheit',
      (WidgetTester tester) async {
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
  });*/
  patrolTest('converter celsius para fahrenheit', ($) async {
    await $.pumpWidgetAndSettle(MyApp());
    await $(#valueTextField).enterText('0');
    await $(#btnCF).tap();
    expect($('32.0'), findsOneWidget);
  });

  patrolTest('converter celsius para fahrenheit', ($) async {
    await $.pumpWidgetAndSettle(MyApp());
    await $(#valueTextField).enterText('100');
    await $(#btnCF).tap();
    expect($('212.0'), findsOneWidget);
  });
}
