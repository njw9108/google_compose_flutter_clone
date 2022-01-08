import 'package:flutter/material.dart';
import 'package:jet_news_clone/presentation/posts/detail_page/search_page.dart';

class SearchBar extends StatelessWidget {
  final FocusNode focusNode;
  final TextEditingController controller;

  const SearchBar({
    Key? key,
    required this.focusNode,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              focusNode: focusNode,
              decoration: const InputDecoration(hintText: 'search title...'),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => SearchPage(
                          keyword: controller.text,
                        )),
              );
            },
            child: const Text('search'),
          ),
        ],
      ),
    );
  }
}
