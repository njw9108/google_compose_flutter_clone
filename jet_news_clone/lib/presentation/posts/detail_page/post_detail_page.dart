import 'package:flutter/cupertino.dart';
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
    switch(paragraph.type) {

      case ParagraphType.Title:
        return const Text('title');
      case ParagraphType.Caption:
        return const Text('Caption');
      case ParagraphType.Header:
        return const Text('header');
      case ParagraphType.Subhead:
        return const Text('subhead');
      case ParagraphType.Text:
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(paragraph.text,style: const TextStyle(fontSize: 22),),
        );
      case ParagraphType.CodeBlock:
        return const Text('Code block');
      case ParagraphType.Quote:
        return const Text('quote');
      case ParagraphType.Bullet:
        return const Text('bullet');
    }
  }
}
