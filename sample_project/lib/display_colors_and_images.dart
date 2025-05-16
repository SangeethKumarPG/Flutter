import 'package:flutter/material.dart';

class ColorsAndImages extends StatelessWidget {
  ColorsAndImages({super.key});
  List<Color> colors = [
    Colors.blueGrey,
    Colors.amberAccent,
    Colors.blue,
    Colors.cyan,
    Colors.deepOrange,
    Colors.green,
    Colors.orangeAccent,
    Colors.tealAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Container Color',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.cyanAccent,
          centerTitle: true,
        ),
        body: SafeArea(
            child: ListView.builder(
                itemBuilder: (context, index) => Container(
                    width: double.infinity, height: 100, color: colors[index]),
                itemCount: colors.length)));
  }
}
