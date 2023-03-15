import 'package:flutter/material.dart';
import 'package:flutter_components/components/components.dart';
import 'package:flutter_test/flutter_test.dart';
import './app.dart';

testSnackBar() {
  testWidgets('Check snackbar', (WidgetTester tester) async {
    await tester.pumpWidget(App(
      children: [
        Builder(builder: (context) {
          return AppFilledButton(
            label: 'Open Dialog',
            onPressed: () {
              AppSnackBar.show(message: 'snackbar message', context: context);
            },
          );
        })
      ],
    ));

    await tester.tap(find.text('Open Dialog'));
    await tester.pumpAndSettle();

    expect(find.text('snackbar message'), findsOneWidget);
  });
}
