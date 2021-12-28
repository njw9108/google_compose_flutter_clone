import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/post.dart';

class PostDetailPage extends StatelessWidget {
  final Post post;

  const PostDetailPage({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(post.publication!.logoUrl),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Published in : '),
                Text(post.publication!.name),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView(
            children: [
              SizedBox(
                height: 180,
                child: Image.asset(
                  'imgs/${post.imageId}.png',
                  fit: BoxFit.cover,
                ),
              ),
              const Padding(padding: EdgeInsets.all(16)),
              Text(
                post.title,
                style:
                    const TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              ),
              const Padding(padding: EdgeInsets.all(8)),
              post.subtitle != null
                  ? Text(
                      post.subtitle!,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    )
                  : const Text(''),
            ],
          ),
        ),
      ),
    );
  }
}
