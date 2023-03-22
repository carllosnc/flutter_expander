import 'package:flutter/material.dart';
import 'package:flutter_components/components/timepicker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'app.dart';

class TimepickerMock extends StatefulWidget {
  const TimepickerMock({super.key});

  @override
  State<TimepickerMock> createState() => _TimepickerMockState();
}

class _TimepickerMockState extends State<TimepickerMock> {
  final _formKey = GlobalKey<FormState>();

  int hour = 0;
  int minute = 0;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          AppTimePicker(
            label: 'Time',
            hint: 'Select a time',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select a time';
              }
              return null;
            },
            onChanged: (TimeOfDay time) {
              hour = time.hour;
              minute = time.minute;
              setState(() {});
            },
          ),
          Text('hour $hour'),
          Text('minute $minute'),
        ],
      ),
    );
  }
}

//test TimerPickerMock
void testTimepicker() {
  testWidgets('Timepicker widget', (WidgetTester tester) async {
    final hour = TimeOfDay.now().hour;
    final minute = TimeOfDay.now().minute;

    await tester.pumpWidget(
      const App(
        children: [
          TimepickerMock(),
        ],
      ),
    );

    await tester.tap(find.text('Time'), warnIfMissed: false);
    await tester.pumpAndSettle();

    await tester.tap(find.text('OK'));
    await tester.pumpAndSettle();

    expect(find.text('hour $hour'), findsOneWidget);
    expect(find.text('minute $minute'), findsOneWidget);
  });
}
