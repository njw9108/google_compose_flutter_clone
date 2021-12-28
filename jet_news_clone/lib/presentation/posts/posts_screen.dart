import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/posts/components/highlight_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/detail_page/post_detail_page.dart';
import 'package:jet_news_clone/presentation/posts/posts_view_model.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<PostViewModel>();
      viewModel.fetchPosts();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostViewModel>();
    final state = viewModel.state;

    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
        title: const Center(
            child: Text(
          'Jet News',
          style: TextStyle(fontSize: 25),
        )),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: state.feed == null
              ? const CircularProgressIndicator()
              : ListView(
                  children: [
                    const Text(
                      'Top stories for you',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    HighlightPostWidget(
                      highlightPost: state.feed!.highlightedPost,
                      onclick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PostDetailPage()),
                        );
                      },
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
