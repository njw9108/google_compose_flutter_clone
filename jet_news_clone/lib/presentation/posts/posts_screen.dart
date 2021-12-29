import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/posts/components/highlight_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/components/popular_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/components/recommended_post_widget.dart';
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
        child: state.feed == null
            ? const CircularProgressIndicator()
            : ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 4.0, top: 20),
                    child: Text(
                      'Top stories for you',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: HighlightPostWidget(
                      highlightPost: state.feed!.highlightedPost,
                      onclick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PostDetailPage(
                                  post: state.feed!.highlightedPost)),
                        );
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  ...state.feed!.recommendedPosts
                      .map((e) => RecommendedPostWidget(
                            recommendedPost: e,
                            onclick: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        PostDetailPage(post: e)),
                              );
                            },
                          ))
                      .toList(),
                  const Padding(
                    padding: EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 4.0, top: 20),
                    child: Text(
                      'Popular on Jetnews',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: SizedBox(
                      height: 280,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: state.feed!.popularPosts
                            .map((e) => PopularPostWidget(
                                  popularPost: e,
                                  onclick: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PostDetailPage(post: e)),
                                    );
                                  },
                                ))
                            .toList(),
                      ),
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
