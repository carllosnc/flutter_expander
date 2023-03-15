import 'package:flutter/material.dart';
import '/components/components.dart';

class DatepickerPage extends StatefulWidget {
  const DatepickerPage({super.key});

  @override
  State<DatepickerPage> createState() => _DatepickerPageState();
}

class _DatepickerPageState extends State<DatepickerPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datepicker'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    debugPrint(date.toString());
                  },
                ),
                const SizedBox(height: 10),
                AppFilledButton(
                  label: 'Submit',
                  fullWidth: true,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      debugPrint('Form is valid');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
