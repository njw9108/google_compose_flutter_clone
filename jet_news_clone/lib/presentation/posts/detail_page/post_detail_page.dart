import 'package:flutter/material.dart';
import 'package:jet_news_clone/domain/model/paragraph.dart';
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
              const Padding(padding: EdgeInsets.all(8)),
              Row(
                children: [
                  const Icon(
                    Icons.account_circle,
                    size: 55,
                  ),
                  const Padding(padding: EdgeInsets.all(4)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post.metadata.author.name,
                        style: const TextStyle(fontSize: 17),
                      ),
                      Text(
                        post.metadata.date +
                            ' - ' +
                            '${post.metadata.readTimeMinutes} min read',
                        style: const TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.all(8)),
              ...post.paragraphs.map((e) => buildContent(e)).toList(),
              const Padding(padding: EdgeInsets.all(16)),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContent(Paragraph paragraph) {
    switch (paragraph.type) {
      case ParagraphType.Title:
        return const Text('title');
      case ParagraphType.Caption:
        return const Text('Caption');
      case ParagraphType.Header:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            paragraph.text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
        );
      case ParagraphType.Subhead:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            paragraph.text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        );
      case ParagraphType.Text:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            paragraph.text,
            style: const TextStyle(fontSize: 20, height: 1.3),
          ),
        );
      case ParagraphType.CodeBlock:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.grey,
            child: Text(
              paragraph.text,
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
          ),
        );
      case ParagraphType.Quote:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            padding: const EdgeInsets.all(16),
            color: Colors.lightGreen,
            child: Text(
              paragraph.text,
              style: const TextStyle(fontSize: 18, height: 1.5),
            ),
          ),
        );
      case ParagraphType.Bullet:
        return ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(
            Icons.circle,
            color: Colors.black,
            size: 15,
          ),
          title: Text(
            paragraph.text,
            style: const TextStyle(fontSize: 18),
          ),
        );
    }
  }
}
