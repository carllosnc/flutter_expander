import 'package:flutter/material.dart';
import 'package:flutter_components/components/components.dart';
import 'package:flutter_test/flutter_test.dart';
import './app.dart';

testCard() {
  testWidgets('Card widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      App(
        children: [
          AppCard(
            header: Container(
              color: Colors.red,
              child: const Text('Card header'),
            ),
            title: 'Card title',
            subtitle: 'Card subtitle',
            icon: Icons.star,
            actions: [
              AppFilledButton(
                label: 'Action button',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );

    expect(find.text('Card title'), findsOneWidget);
    expect(find.text('Card subtitle'), findsOneWidget);
    expect(find.byIcon(Icons.star), findsOneWidget);
    expect(find.byType(FilledButton), findsOneWidget);
    expect(find.text('Card header'), findsOneWidget);
  });
}
