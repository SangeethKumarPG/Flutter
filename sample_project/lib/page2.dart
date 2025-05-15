import 'package:flutter/material.dart';
import 'package:sample_project/page1.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Page 2',
                style: const TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 24,
                    fontWeight: FontWeight.bold)),
            centerTitle: true,
            leading: Row(children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.menu_outlined)),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.search_outlined))
            ])),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Page1()));
                },
                style: ElevatedButton.styleFrom(
                    elevation: 20,
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.cyan,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
                child: const Text('Go to Page 1'))
          ],
        )));
  }
}
