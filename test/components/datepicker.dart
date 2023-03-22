import 'package:flutter/material.dart';
import 'package:flutter_components/components/datepicker.dart';
import 'package:flutter_components/components/filled_button.dart';
import 'package:flutter_test/flutter_test.dart';

import 'app.dart';

class DatepickerMock extends StatefulWidget {
  const DatepickerMock({super.key});

  @override
  State<DatepickerMock> createState() => _DatepickerMockState();
}

class _DatepickerMockState extends State<DatepickerMock> {
  final _formKey = GlobalKey<FormState>();
  String day = '';
  String month = '';
  String year = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppDatePicker(
            label: 'Date',
            hint: 'Select a date',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select a date';
              }
              return null;
            },
            onChanged: (DateTime? date) {
              setState(() {
                day = date!.day.toString();
                month = date.month.toString();
                year = date.year.toString();
              });
            },
          ),
          Text('day $day'),
          Text('month $month'),
          Text('year $year'),
          //submit button
          AppFilledButton(
            label: 'Submit',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                //submit action
              }
            },
          ),
        ],
      ),
    );
  }
}

void testDatepicker() {
  testWidgets('Datepicker error message', (WidgetTester tester) async {
    await tester.pumpWidget(
      const App(
        children: [
          DatepickerMock(),
        ],
      ),
    );

    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    expect(find.text('Please select a date'), findsOneWidget);
  });

  testWidgets('Datepicker widget', (WidgetTester tester) async {
    var day = DateTime.now().day.toString();
    var month = DateTime.now().month.toString();
    var year = DateTime.now().year.toString();

    await tester.pumpWidget(
      const App(
        children: [
          DatepickerMock(),
        ],
      ),
    );

    await tester.tap(find.byType(TextFormField));
    await tester.pumpAndSettle();
    await tester.tap(find.text(day));
    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    expect(find.text('day $day'), findsOneWidget);
    expect(find.text('month $month'), findsOneWidget);
    expect(find.text('year $year'), findsOneWidget);
  });
}
