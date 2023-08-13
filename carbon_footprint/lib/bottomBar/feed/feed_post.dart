import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedPage extends StatelessWidget {
  final List<Map<String, dynamic>> posts = [
    {
      'username': 'user1',
      'imageUrl':
          'https://images.unsplash.com/photo-1484406566174-9da000fda645?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1889&q=80',
      'caption': 'Beautiful nature scene',
      'likes': 2,
    },
    {
      'username': 'user2',
      'imageUrl':
          'https://images.unsplash.com/photo-1474511320723-9a56873867b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1172&q=80',
      'caption': 'Cute animals!',
      'likes': 23,
    },
    // Add more posts
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Instagram Feed')),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return PostItem(
            username: posts[index]['username'],
            imageUrl: posts[index]['imageUrl'],
            caption: posts[index]['caption'],
            likes: posts[index]['likes'],
          );
        },
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  final String? username;
  final String? imageUrl;
  final String? caption;
  final int? likes;

  PostItem({this.username, this.imageUrl, this.caption, this.likes});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl!),
            ),
            title: Text(username!),
          ),
          Image.network(imageUrl!),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(caption!),
          ),
          Row(
            children: [
              Icon(Icons.favorite, color: Colors.red),
              SizedBox(width: 4.0),
              Text('$likes'),
            ],
          ),
        ],
      ),
    );
  }
}
