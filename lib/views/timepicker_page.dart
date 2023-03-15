import 'package:flutter/material.dart';
import '/components/components.dart';

class TimepickerPage extends StatefulWidget {
  const TimepickerPage({super.key});

  @override
  State<TimepickerPage> createState() => _TimepickerPageState();
}

class _TimepickerPageState extends State<TimepickerPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TimePicker(
                  validator: (time) {
                    if (time == null || time.isEmpty) {
                      return 'Please select a time';
                    }
                    return null;
                  },
                  label: 'Time Picker',
                  onChanged: (time) {
                    debugPrint(time.toString());
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
