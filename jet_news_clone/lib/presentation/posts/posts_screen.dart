import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/interests/interest_screen.dart';
import 'package:jet_news_clone/presentation/posts/components/highlight_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/components/popular_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/components/recent_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/components/recommended_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/detail_page/post_detail_page.dart';
import 'package:jet_news_clone/presentation/posts/posts_view_model.dart';
import 'package:jet_news_clone/ui/ui.dart';
import 'package:provider/provider.dart';

class PostsScreen extends StatefulWidget {
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<PostViewModel>();
      viewModel.fetchPosts();
    });
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostViewModel>();
    final state = viewModel.state;
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                leading: Icon(Icons.beach_access_rounded),
                title: Text(
                  'Jet News',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: state.selectedDrawer == DrawerType.home
                      ? Colors.pinkAccent
                      : Colors.transparent,
                  onTap: () {
                    viewModel.onDrawerSelectChange(DrawerType.home);
                    Navigator.of(context).pop();
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.home),
                  title: const Text(
                    'Home',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  tileColor: state.selectedDrawer == DrawerType.interest
                      ? Colors.pinkAccent
                      : Colors.transparent,
                  onTap: () {
                    viewModel.onDrawerSelectChange(DrawerType.interest);
                    Navigator.of(context).pop();
                    if (state.selectedDrawer != DrawerType.interest) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InterestScreen()),
                      );
                    }
                  },
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.message_outlined),
                  title: const Text(
                    'Interest',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _focusNode.hasFocus
                      ? _focusNode.unfocus()
                      : FocusScope.of(context).requestFocus(_focusNode);
                });
              },
              icon: const Icon(Icons.search)),
        ],
        title: const Center(
            child: Text(
          'Jet News',
          style: TextStyle(fontSize: 25),
        )),
      ),
      body: state.feed == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                Visibility(
                  visible: _focusNode.hasFocus ? true : false,
                  child: TextField(
                    focusNode: _focusNode,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 8.0, right: 8.0, bottom: 4.0, top: 20),
                  child: Text(
                    'Top stories for you',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SizedBox(
                    height: 260,
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
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                ...state.feed!.recentPosts
                    .map((e) => RecentPostWidget(
                          recentPost: e,
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
              ],
            ),
    );
  }
}
