import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/post.dart';

class RecommendedPostWidget extends StatelessWidget {
  final Post recommendedPost;
  final Function() onclick;

  const RecommendedPostWidget({
    Key? key,
    required this.recommendedPost,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              'imgs/${recommendedPost.imageThumbId}.png',
              fit: BoxFit.cover,
              width: 50,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border,
                size: 28,
              ),
            ),
            title: Text(
              recommendedPost.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              recommendedPost.metadata.author.name +
                  '-' +
                  '${recommendedPost.metadata.readTimeMinutes} min read',
              style: const TextStyle(fontSize: 17),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(
              color: Colors.grey,
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}