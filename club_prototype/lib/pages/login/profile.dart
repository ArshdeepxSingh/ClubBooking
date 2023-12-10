import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    // Dummy list of posts
    List<Post> posts = [
      Post(imageUrl: 'assets/images/post1.jpg'),
      Post(imageUrl: 'assets/images/post2.jpg'),
      // Add more post images here
    ];

    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                // Handle edit profile action
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'Profile'),
              Tab(text: 'Friends'), // Add more tabs if needed
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/apple_logo.png'),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Your Username',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Bio or description here',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(thickness: 1),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  // First tab - Posts
                  GridView.builder(
                    padding: EdgeInsets.all(8),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 4,
                    ),
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        posts[index].imageUrl,
                        fit: BoxFit.cover,
                      );
                    },
                  ),

                  // Second tab - Saved
                  Center(
                    child: Text(
                      'You have added no friends',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  // Add more TabBarView children for additional tabs
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Post {
  final String imageUrl;

  Post({required this.imageUrl});
}
