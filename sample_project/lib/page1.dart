import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 120, 200, 120),
            title: const Text("My First Page",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            leading: IconButton(
                onPressed: () {},
                color: Colors.red,
                icon: const Icon(Icons.person_2_outlined)),
            actions: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_outlined))
            ]),
        body: SafeArea(
            child: Column(
          children: [
            TextButton(onPressed: () {}, child: const Text("Button 1")),
            ElevatedButton(
              onPressed: () {},
              child: const Text("elevated button"),
              style: ElevatedButton.styleFrom( 
                  elevation: 20,
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.cyan,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  )),
            )
          ],
        )));
  }
}
