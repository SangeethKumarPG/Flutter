import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  CardView({super.key});

  List<Map<String, dynamic>> sampleData = [
    {
      'title': 'sample title1',
      'description': 'sample description1',
      'image': 'assets/image1.jpeg',
      'price': '\$100',
    },
    {
      'title': 'sample title2',
      'description': 'sample description2',
      'image': 'assets/image2.jpeg',
      'price': '\$200',
    },
    {
      'title': 'sample title3',
      'description': 'sample description3',
      'image': 'assets/image3.jpeg',
      'price': '\$300',
    },
    {
      'title': 'sample title4',
      'description': 'sample description4',
      'image': 'assets/image4.jpeg',
      'price': '\$400',
    },
    {
      'title': 'sample title5',
      'description': 'sample description5',
      'image': 'assets/image5.jpeg',
      'price': '\$500',
    }  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card View'),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: sampleData.length,
                itemBuilder: (context, index) => Card(
                    child: ListTile(
                        title: Text(sampleData[index]['title']),
                        subtitle: Text(sampleData[index]['description']),
                        leading: CircleAvatar(
                            backgroundImage:
                                AssetImage(sampleData[index]['image'])),
                        trailing: Text(sampleData[index]['price']))))));
  }
}
