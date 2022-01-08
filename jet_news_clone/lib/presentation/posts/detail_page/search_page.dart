import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/posts/components/search_result_post_widget.dart';
import 'package:jet_news_clone/presentation/posts/detail_page/post_detail_page.dart';
import 'package:jet_news_clone/presentation/posts/posts_view_model.dart';
import 'package:provider/provider.dart';

class SearchPage extends StatefulWidget {
  final String keyword;

  const SearchPage({
    required this.keyword,
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<PostViewModel>();
      viewModel.searchPost(widget.keyword);
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PostViewModel>();
    final state = viewModel.state;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text('[ ${widget.keyword} ] search result'),
      ),
      body: state.isLoading == true
          ? const CircularProgressIndicator()
          : (state.searchResults.isEmpty)
              ? const Text('검색 결과가 없습니다.')
              : ListView(
                  children: state.searchResults.map((resultPost) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SearchResultPostWidget(
                        resultPost: resultPost,
                        onclick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PostDetailPage(post: resultPost)),
                          );
                        },
                      ),
                    );
                  }).toList(),
                ),
    );
  }
}
