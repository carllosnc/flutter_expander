import 'package:flutter/material.dart';
import 'package:flutter_components/components/expander.dart';
import 'package:flutter_test/flutter_test.dart';
import './app.dart';

void main() {
  testWidgets('Check expander render', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          Expander(
            title: 'header',
            children: [
              Text('body'),
            ],
          ),
        ],
      ),
    );

    expect(find.text('header'), findsOneWidget);
    expect(find.text('body'), findsOneWidget);
  });

  testWidgets('Check expander height', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          Expander(
            title: 'header',
            children: [
              Text('body'),
            ],
          ),
        ],
      ),
    );

    await tester.pumpAndSettle();

    final double initialHeight = tester.getSize(find.byType(Expander)).height;

    await tester.tap(find.byType(Expander));
    await tester.pumpAndSettle();

    final double finalHeight = tester.getSize(find.byType(Expander)).height;

    expect(finalHeight, greaterThan(initialHeight));
  });
}
