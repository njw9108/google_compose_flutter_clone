import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/post.dart';

class PopularPostWidget extends StatelessWidget {
  final Post popularPost;
  final Function() onclick;

  const PopularPostWidget({
    Key? key,
    required this.popularPost,
    required this.onclick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onclick,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              'imgs/${popularPost.imageId}.png',
              fit: BoxFit.cover,
              width: 280,
              height: 100,
            ),
            Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black12,
                )),
                width: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      popularPost.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                    Text(
                      popularPost.metadata.author.name,
                      style: const TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      popularPost.metadata.date +
                          ' - ${popularPost.metadata.readTimeMinutes} min read',
                      style: const TextStyle(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Padding(padding: EdgeInsets.all(8)),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
