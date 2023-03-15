import 'package:flutter/material.dart';

class AppSelect extends StatefulWidget {
  final void Function(dynamic) onChange;
  final Map<String, dynamic> items;
  final String label;
  final String? Function(String?)? validator;
  final String placeholder;

  const AppSelect({
    super.key,
    required this.onChange,
    required this.items,
    required this.label,
    this.validator,
    this.placeholder = 'Placegolder',
  });

  @override
  State<AppSelect> createState() => _AppSelectState();
}

class _AppSelectState extends State<AppSelect> {
  @override
  Widget build(BuildContext context) {
    var outlineStyle = InputDecoration(
      contentPadding: const EdgeInsets.all(15),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      labelText: widget.label,
      hintText: widget.placeholder,
      prefixIcon: Icon(
        Icons.flag,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
    );

    return DropdownButtonFormField(
      validator: widget.validator,
      icon: const Icon(Icons.expand_more),
      dropdownColor: Theme.of(context).colorScheme.surfaceVariant,
      elevation: 0,
      iconSize: 24,
      borderRadius: BorderRadius.circular(20),
      decoration: outlineStyle,
      items: widget.items.keys.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(
            value,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.normal,
            ),
          ),
        );
      }).toList(),
      onChanged: (String? value) {
        widget.onChange(widget.items[value]);
      },
    );
  }
}
