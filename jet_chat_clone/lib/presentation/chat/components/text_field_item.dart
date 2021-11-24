import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/presentation/chat/chat_ui_event.dart';
import 'package:provider/provider.dart';

import '../chat_view_model.dart';

class TextFieldItem extends StatefulWidget {
  final TextEditingController textEditingController;

  const TextFieldItem({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  State<TextFieldItem> createState() => _TextFieldItemState();
}

class _TextFieldItemState extends State<TextFieldItem> {
  final emojiList = const [
    Icon(Icons.emoji_emotions_outlined),
    Icon(Icons.alternate_email_outlined),
    Icon(Icons.image_outlined),
    Icon(Icons.add_location_outlined),
    Icon(Icons.video_call_rounded),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatViewModel>();

    return Container(
      color: const Color(0xffdbe0f6),
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: TextField(
              onTap: () {

              },
              onChanged: (value) {
                setState(() {});
              },
              controller: widget.textEditingController,
              style: const TextStyle(fontSize: 19),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                hintText: 'Message #composers',
                border: InputBorder.none,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  color: Colors.indigo,
                  onPressed: () {},
                  icon: const Icon(Icons.emoji_emotions_outlined),
                ),
                IconButton(
                  color: Colors.indigo,
                  onPressed: () {},
                  icon: const Icon(Icons.alternate_email_outlined),
                ),
                IconButton(
                  color: Colors.indigo,
                  onPressed: () {},
                  icon: const Icon(Icons.image_outlined),
                ),
                IconButton(
                  color: Colors.indigo,
                  onPressed: () {},
                  icon: const Icon(Icons.add_location_outlined),
                ),
                IconButton(
                  color: Colors.indigo,
                  onPressed: () {},
                  icon: const Icon(Icons.video_call_rounded),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: (widget.textEditingController.text.isNotEmpty)
                          ? const Color.fromRGBO(0, 0, 255, 70)
                          : Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () {
                      final content = widget.textEditingController.text;
                      final timestamp = DateTime.now();

                      if (content.isNotEmpty) {
                        viewModel.onEvent(ChatUiEvent.sendMessage(Message(
                            author: 'me',
                            content: content,
                            timestamp: DateFormat.jm().format(timestamp))));
                      }
                    },
                    child: const Text('Send')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
