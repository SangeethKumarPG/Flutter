import 'package:flutter/material.dart';

class InstagramHome extends StatelessWidget {
  const InstagramHome({super.key});

  // Static data lists
  static const List<String> usernames = [
    'flutter_dev',
    'dart_lang',
    'material_design',
    'android_dev',
    'google_io'
  ];

  static const List<String> captions = [
    'Building beautiful apps with Flutter! #flutter',
    'Dart 3.0 is out now! Check it out #dart',
    'New Material 3 components available #materialdesign',
    'Android 14 developer preview is here #android',
    'Save the date for Google I/O 2024! #googleio'
  ];

  // Asset image paths
  static const List<String> profilePics = [
    'assets/image1.jpeg',
    'assets/image2.jpeg',
    'assets/image3.jpeg',
    'assets/image4.jpeg',
    'assets/image5.jpeg'
  ];

  static const List<String> postImages = [
    'assets/image1.jpeg',
    'assets/image2.jpeg',
    'assets/image3.jpeg',
    'assets/image4.jpeg',
    'assets/image5.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Instagram',
          style: TextStyle(fontFamily: 'Billabong', fontSize: 28),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.send_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Stories
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: usernames.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.pink,
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(profilePics[index]),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(usernames[index])
                      ],
                    ),
                  );
                },
              ),
            ),
            const Divider(),
            // Posts
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: usernames.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Post header
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(profilePics[index]),
                          ),
                          const SizedBox(width: 10),
                          Text(usernames[index]),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.more_vert),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    // Post image
                    Image.asset(
                      postImages[index],
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    // Post actions
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.favorite_border),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.comment_outlined),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.send_outlined),
                            onPressed: () {},
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.bookmark_border),
                            onPressed: () {},
                          )
                        ],
                      ),
                    ),
                    // Likes
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '1,234 likes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    // Caption
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 4.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: '${usernames[index]} ',
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: captions[index],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Comments
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'View all 42 comments',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    // Time posted
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '2 HOURS AGO',
                        style: TextStyle(color: Colors.grey, fontSize: 10),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.add_box_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.video_collection_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
