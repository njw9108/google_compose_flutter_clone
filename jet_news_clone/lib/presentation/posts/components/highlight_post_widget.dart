import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/post.dart';

class HighlightPostWidget extends StatelessWidget {
  final Post highlightPost;
  final Function() onclick;

  const HighlightPostWidget({
    Key? key,
    required this.highlightPost,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,
              child: Image.asset(
                'imgs/${highlightPost.imageId}.png',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                highlightPost.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ),
            Text(
              highlightPost.metadata!.author.name,
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              highlightPost.metadata!.date +
                  ' - ' +
                  '${highlightPost.metadata!.readTimeMinutes} min read',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
