import 'package:flutter/material.dart';
import '/components/components.dart';

class ExpanderPage extends StatefulWidget {
  const ExpanderPage({super.key});

  @override
  State<ExpanderPage> createState() => _ExpanderPageState();
}

class _ExpanderPageState extends State<ExpanderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expansion Card'),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            ExpansionCard(
              title: 'Lorem Ipsum is simply',
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ExpansionCard(
              title:
                  'Lorem Ipsum is simply the printing software like Aldus PageMaker including versions',
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ExpansionCard(
              title: 'Lorem Ipsum is',
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
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
