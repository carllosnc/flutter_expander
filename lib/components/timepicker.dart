import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  final String? label;
  final String? hint;
  final Function(TimeOfDay) onChanged;
  final String? Function(String?)? validator;

  const TimePicker({
    super.key,
    this.label,
    this.hint,
    required this.onChanged,
    this.validator,
  });

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  final inputController = TextEditingController();
  TimeOfDay initialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      readOnly: true,
      validator: widget.validator,
      onTap: () {
        showTimePicker(
          context: context,
          initialTime: initialTime,
        ).then((TimeOfDay? value) {
          if (value != null) {
            final String hour = value.hour.toString().padLeft(2, '0');
            final String minute = value.minute.toString().padLeft(2, '0');
            final String time = '$hour:$minute';

            setState(() {
              initialTime = value;
            });

            inputController.text = time;

            widget.onChanged(value);
          }
        });
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.access_time),
        contentPadding: const EdgeInsets.all(15),
        labelText: widget.label,
        hintText: widget.hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      keyboardType: TextInputType.datetime,
    );
  }
}
