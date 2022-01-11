import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/post.dart';

class SearchResultPostWidget extends StatelessWidget {
  final Post resultPost;
  final Function() onclick;

  const SearchResultPostWidget({
    Key? key,
    required this.resultPost,
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
                  'imgs/${resultPost.imageThumbId}.png',
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
                    Text(
                      resultPost.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                subtitle: Text(resultPost.metadata!.author.name +
                    ' - ${resultPost.metadata!.readTimeMinutes} min read'),
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
