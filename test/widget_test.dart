import 'package:flutter_test/flutter_test.dart';
import 'package:new_project/main.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('displays the Xylophone screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Xylophone'), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(7));
  });
}
