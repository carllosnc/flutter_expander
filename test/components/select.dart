import 'package:flutter/material.dart';
import 'package:flutter_components/components/components.dart';
import 'package:flutter_test/flutter_test.dart';

import 'app.dart';

class SelectMock extends StatefulWidget {
  const SelectMock({super.key});

  @override
  State<SelectMock> createState() => _SelectMockState();
}

class _SelectMockState extends State<SelectMock> {
  final _formKey = GlobalKey<FormState>();
  String? country;

  Map<String, dynamic> items = {
    'Brasil': '1',
    'United States': '2',
    'Canada': '3',
    'Australia': '4',
    'India': '5',
    'China': '6',
    'Japan': '7',
    'South Korea': '8',
    'Germany': '9',
  };

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppSelect(
            label: "Country",
            items: items,
            placeholder: 'Select a country',
            onChange: (dynamic value) {
              setState(() {
                country = value;
              });
            },
            validator: (value) {
              if (value == null) {
                return 'Please select a country';
              }
              return null;
            },
          ),
          AppFilledButton(
            label: "submit",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                debugPrint('Validated');
              }
            },
          ),
          if (country != null) Text(country!),
        ],
      ),
    );
  }
}

testSelect() {
  testWidgets('Select a country error', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          SelectMock(),
        ],
      ),
    );

    await tester.tap(find.text('submit'));
    await tester.pumpAndSettle();

    expect(find.text('Please select a country'), findsOneWidget);
  });

  testWidgets('Select a country', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          SelectMock(),
        ],
      ),
    );

    await tester.tap(find.text('Select a country'));
    await tester.pumpAndSettle();

    await tester.tap(find.text('United States').last);
    await tester.pumpAndSettle();

    await tester.tap(find.text('submit'));
    await tester.pumpAndSettle();

    expect(find.text('United States'), findsOneWidget);
  });
}
