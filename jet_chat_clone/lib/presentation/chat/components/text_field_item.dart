import 'package:flutter/material.dart';

class TextFieldItem extends StatelessWidget {
  const TextFieldItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffdbe0f6),
      child: Expanded(
        child: Column(
          children: [
            const Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  hintText: 'Message #composers',
                  border: InputBorder.none,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    color: Colors.indigo,
                    icon: const Icon(Icons.emoji_emotions_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.indigo,
                    icon: const Icon(Icons.alternate_email_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.indigo,
                    icon: const Icon(Icons.image_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.indigo,
                    icon: const Icon(Icons.add_location_outlined),
                    onPressed: () {},
                  ),
                  IconButton(
                    color: Colors.indigo,
                    icon: const Icon(Icons.video_call_rounded),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
