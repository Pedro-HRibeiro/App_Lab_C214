import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_rest_api/main.dart';


void main(){
  testWidgets('teste_botao', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.text('Somar'), findsOneWidget);
  });
}