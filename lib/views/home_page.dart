import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Components'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Buttons'),
            onTap: () {
              context.router.pushNamed('/buttons');
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Cards'),
            onTap: () {
              context.router.pushNamed('/cards');
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Dialog'),
            onTap: () {
              context.router.pushNamed('/dialog');
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Snackbar'),
            onTap: () {
              context.router.pushNamed('/snackbar');
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Select'),
            onTap: () {
              context.router.pushNamed('/select');
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Datepicker'),
            onTap: () {
              context.router.pushNamed('/datepicker');
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Timepicker'),
            onTap: () {
              context.router.pushNamed('/timepicker');
            },
          ),
          const Divider(height: 1),
          ListTile(
            title: const Text('Expander'),
            onTap: () {
              context.router.pushNamed('/expander');
            },
          ),
        ],
      ),
    );
  }
}
