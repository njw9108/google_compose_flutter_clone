import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final FocusNode focusNode;

  const SearchBar({
    Key? key,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextField(
          focusNode: focusNode,
          decoration: const InputDecoration(hintText: 'search title...'),
        ),
      ],
    );
  }
}
