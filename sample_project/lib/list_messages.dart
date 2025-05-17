import 'package:flutter/material.dart';

class ListMessages extends StatelessWidget {
  ListMessages({super.key});

  final List<String> _names = ['Rahul', 'Tinto', 'Arjun'];
  final List<String> _messages = [
    "Hello there",
    "How are you?",
    "Good to hear from you"
  ];
  final List<String> _profilePhotos = [
    'assets/image1.jpeg',
    'assets/image2.jpeg',
    'assets/image3.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade600,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.phone),
                onPressed: () {},
              ),
              const Text('Messages', style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        body: SafeArea(
            child: ListView.separated(
                itemBuilder: (context, index) => CardElement(
                    name: _names[index],
                    message: _messages[index],
                    profilePhoto: _profilePhotos[index]),
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 2, color: Colors.black),
                itemCount: _names.length)));
  }
}

class CardElement extends StatelessWidget {
  String name = "";
  String message = "";
  String profilePhoto = "";
  CardElement(
      {super.key,
      required this.name,
      required this.message,
      required this.profilePhoto});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(profilePhoto)),
          title: Text(name),
          subtitle: Text(message),
        ));
  }
}
