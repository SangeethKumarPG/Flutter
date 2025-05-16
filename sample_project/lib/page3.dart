import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Page 3'),
        centerTitle: true,
        leading: IconButton.outlined(
            onPressed: () {}, icon: const Icon(Icons.menu_outlined)),
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                      children: [
              Image(
                image: AssetImage('assets/image1.jpeg'),
                height: 200,
                width: 200,
              ),
              Image(
                image: AssetImage('assets/image2.jpeg'),
                height: 200,
                width: 200,
              ),
              Image(
                image: AssetImage('assets/image3.jpeg'),
                height: 200,
                width: 200,
              ),
                      ],
                    ),
            ),
          )),
    );
  }
}
