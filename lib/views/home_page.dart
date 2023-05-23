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
            Expander(
              title: "What is Flutter?",
              children: [
                Image.network(
                  "https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Flutter is an open source framework by Google for building beautiful, natively compiled, multi-platform applications from a single codebase.",
                      ),
                      const SizedBox(height: 10),
                      FilledButton(
                        onPressed: () {},
                        child: const Text('Read more'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expander(
              title: "What's a widget in Flutter?",
              children: [
                Image.network(
                  "https://ckl-website-static.s3.amazonaws.com/wp-content/uploads/2023/01/apps-made-with-flutter.jpg",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state.",
                      ),
                      const SizedBox(height: 10),
                      FilledButton(
                        onPressed: () {},
                        child: const Text('Read more'),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expander(
              title: "What's material design?",
              children: <Widget>[
                Image.network(
                  "https://lh3.googleusercontent.com/DttyZQpJepBHlNe4pXEMJ5H6c53d97tplli_vXusdzZbpeY5SDLO7NwqiUEgqJ5VeAxvVdLT5suK_zGbZ0GpAe4NrjWbQqIf17uK5i0=w1064-v0",
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Material Design is a visual language that synthesizes the classic principles of good design with the innovation of technology and science. Google's Material Design is a unified system that combines theory, resources, and tools for crafting digital experiences. Flutter's widgets incorporate all critical platform differences such as scrolling, navigation, icons and fonts, and your Flutter code is compiled to native ARM machine code using Dart's native compilers.",
                      ),
                      const SizedBox(height: 10),
                      FilledButton(
                        onPressed: () {},
                        child: const Text('Read more'),
                      )
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
