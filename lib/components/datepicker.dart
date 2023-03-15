import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppDatePicker extends StatefulWidget {
  final String? label;
  final String? hint;
  final Function(DateTime) onChanged;
  final String? Function(String?)? validator;

  const AppDatePicker({
    super.key,
    this.label,
    this.hint,
    required this.onChanged,
    this.validator,
  });

  @override
  State<AppDatePicker> createState() => _AppDatePickerState();
}

class _AppDatePickerState extends State<AppDatePicker> {
  final inputController = TextEditingController();
  DateTime firstDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      readOnly: true,
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: firstDate,
          firstDate: DateTime(1900),
          lastDate: DateTime(2050),
        ).then(
          (DateTime? date) {
            if (date != null) {
              var formatedData = DateFormat.MMMMEEEEd().format(date);

              setState(() {
                firstDate = date;
              });

              widget.onChanged(date);
              inputController.text = formatedData;
            }
          },
        );
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.calendar_month),
        contentPadding: const EdgeInsets.all(15),
        labelText: widget.label,
        hintText: widget.hint,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      keyboardType: TextInputType.datetime,
      validator: widget.validator,
    );
  }
}
