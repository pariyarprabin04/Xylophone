import 'package:flutter_test/flutter_test.dart';
import 'package:new_project/main.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('displays the Xylophone screen', (WidgetTester tester) async {
    tester.view.physicalSize = const Size(800, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const XylophoneApp());

    expect(find.text('Xylophone'), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(7));
  });
}
