import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/post.dart';

class RecentPostWidget extends StatelessWidget {
  final Post recentPost;
  final Function() onclick;

  const RecentPostWidget({
    Key? key,
    required this.recentPost,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onclick,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Image.asset(
                  'imgs/${recentPost.imageThumbId}.png',
                  fit: BoxFit.cover,
                  width: 50,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'BASED ON YOUR HISTORY',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      recentPost.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(recentPost.metadata!.author.name +
                    ' - ${recentPost.metadata!.readTimeMinutes} min read'),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
