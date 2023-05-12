import 'package:flutter/material.dart';
import '/components/components.dart';

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
        title: const Text('Expander'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            const Expander(
              title: "What is Flutter?",
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Expander(
              title: "What is a widget in Flutter?",
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Everything in Flutter is a widget. Widgets are the UI building blocks of an application. Each widget is an immutable declaration of part of the user interface. Unlike other frameworks that separate views, view controllers, layouts, and other properties, Flutter has a consistent unified object model: the widget.",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expander(
              title: "About Material Design",
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Material Design is a design language developed by Google in 2014. Expanding on the 'card' motifs that debuted in Google Now, Material Design uses more grid-based layouts, responsive animations and transitions, padding, and depth effects such as lighting and shadows.",
                      ),
                      const SizedBox(height: 10),
                      FilledButton(
                        onPressed: () {},
                        child: const Text(
                          "Read more",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
