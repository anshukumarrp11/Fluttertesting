import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertesting/main.dart';

void main() {
  testWidgets('String got reversed', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    var textfield = find.byType(TextField);
    expect(textfield, findsOneWidget);
    await tester.enterText(textfield, 'Hello');
    expect(find.text('Hello'), findsOneWidget);
    var button = find.text("Reverse");
    expect(button, findsOneWidget);
    await tester.tap(button);
    await tester.pump();
    expect(find.text('olleH'), findsOneWidget);
  });
}
