import 'package:flutter/material.dart';
import 'package:flutter_components/components/components.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  Map<String, dynamic> items = {
    '🇧🇷 Brasil': '1',
    '🇺🇸 United States': '2',
    '🇨🇦 Canada': '3',
    '🇦🇺 Australia': '4',
    '🇮🇳 India': '5',
    '🇨🇳 China': '6',
    '🇯🇵 Japan': '7',
    '🇰🇷 South Korea': '8',
    '🇩🇪 Germany': '9',
  };

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Page'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: AppSelect(
                  label: "Country",
                  items: items,
                  placeholder: 'Select a country',
                  onChange: (dynamic value) {
                    debugPrint(value);
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select a country';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 10),
              AppFilledButton(
                label: 'Submit',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    debugPrint('Validated');
                  }
                },
                fullWidth: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
