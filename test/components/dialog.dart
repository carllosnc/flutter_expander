import 'package:flutter/material.dart';
import 'package:flutter_components/components/components.dart';
import 'package:flutter_test/flutter_test.dart';
import './app.dart';

testDialog() {
  testWidgets('Check dialog', (WidgetTester tester) async {
    await tester.pumpWidget(App(
      children: [
        Builder(builder: (context) {
          return AppFilledButton(
            label: 'Open Dialog',
            onPressed: () {
              AppDialog.show(
                context: context,
                title: "Dialog title",
                subtitle: 'Dialog subtitle',
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Ok'),
                  )
                ],
              );
            },
          );
        })
      ],
    ));

    await tester.tap(find.byType(FilledButton));
    await tester.pumpAndSettle();

    expect(find.text('Dialog title'), findsOneWidget);
    expect(find.text('Dialog subtitle'), findsOneWidget);

    await tester.tap(find.text('Ok'));
    await tester.pumpAndSettle();

    expect(find.text('Dialog title'), findsNothing);
    expect(find.text('Dialog subtitle'), findsNothing);
  });
}
