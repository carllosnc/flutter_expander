import 'package:flutter/material.dart';
import '/components/components.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({super.key});

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                spacing: 10,
                children: [
                  AppFilledButton(
                    onPressed: () {},
                    label: 'Button',
                    loading: false,
                  ),
                  AppOutlinedButton(
                    onPressed: () {},
                    label: 'Button',
                    loading: false,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 10,
                children: const [
                  AppFilledButton(
                    label: 'Loading...',
                    loading: true,
                  ),
                  AppOutlinedButton(
                    label: 'Loading...',
                    loading: true,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 10,
                children: [
                  AppFilledButton(
                    onPressed: () {},
                    label: 'Full width',
                    fullWidth: true,
                  ),
                  AppOutlinedButton(
                    onPressed: () {},
                    label: 'Full width',
                    fullWidth: true,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 10,
                children: const [
                  AppFilledButton(
                    label: 'Disabled',
                    onPressed: null,
                  ),
                  AppOutlinedButton(
                    label: 'Disabled',
                    onPressed: null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
