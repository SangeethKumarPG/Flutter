import 'package:flutter/material.dart';

class FullViewImage extends StatelessWidget {
  const FullViewImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Full View Image'),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
          leading: IconButton.outlined(
              onPressed: () {}, icon: Icon(Icons.menu_outlined)),
        ),
        body: SafeArea(
            child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image1.jpeg'), fit: BoxFit.cover)),
        )));
  }
}
