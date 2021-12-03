import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:jet_chat_clone/domain/model/message.dart';
import 'package:jet_chat_clone/presentation/chat/chat_ui_event.dart';
import 'package:jet_chat_clone/presentation/chat/components/ensure_visible_when_focused.dart';
import 'package:jet_chat_clone/ui/color.dart';
import 'package:jet_chat_clone/ui/icon_button_data.dart';
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
  final FocusNode _focusNode = FocusNode();
  int listenerId = 0;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      _focusNode.addListener(_focusNodeListener);
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_focusNodeListener);
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _focusNodeListener() async {
    if (_focusNode.hasFocus) {
      context.read<ChatViewModel>().keyboardSelectChange(true);
    } else {
      context.read<ChatViewModel>().keyboardSelectChange(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ChatViewModel>();

    return Container(
      color: brightBlue,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: EnsureVisibleWhenFocused(
              onFocused: () {
                viewModel.keyboardSelectChange(true);
              },
              onUnFocused: () {
                viewModel.keyboardSelectChange(false);
              },
              focusNode: _focusNode,
              child: TextField(
                focusNode: _focusNode,
                onTap: () {},
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
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...emojiList
                    .map(
                      (e) => IconButton(
                        icon: e.icon,
                        color: Colors.indigo,
                        onPressed: () {
                          e.onTap(viewModel);
                        },
                      ),
                    )
                    .toList(),
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

                        FocusScope.of(context).unfocus();
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
