import 'package:flutter/material.dart';
import 'package:jet_chat_clone_2/domain/model/message.dart';
import 'package:jet_chat_clone_2/presentation/chat/chat_ui_event.dart';
import 'package:jet_chat_clone_2/presentation/chat/chat_view_model.dart';
import 'package:jet_chat_clone_2/presentation/chat/components/emoji_keyboard.dart';
import 'package:jet_chat_clone_2/presentation/chat/components/ensure_visible_when_focused.dart';
import 'package:jet_chat_clone_2/ui/color.dart' as color;
import 'package:jet_chat_clone_2/ui/icon_button_data.dart';
import 'package:provider/provider.dart';

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
  final FocusNode _iconFocusNode = FocusNode();
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
    _iconFocusNode.dispose();
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
      color: color.brightBlue,
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
                ...iconList
                    .map(
                      (e) => IconButton(
                        icon: e.icon,
                        color: Colors.indigo,
                        onPressed: () {
                          e.onTap(viewModel);
                          _iconFocusNode.requestFocus();
                        },
                      ),
                    )
                    .toList(),
                ElevatedButton(
                    focusNode: _iconFocusNode,
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
                        viewModel.onEvent(
                          ChatUiEvent.sendMessage(
                            Message(
                              author: 'me',
                              content: content,
                              timestamp: timestamp.millisecondsSinceEpoch,
                            ),
                          ),
                        );

                        FocusScope.of(context).unfocus();
                      }
                    },
                    child: const Text('Send')),
              ],
            ),
          ),
          Flexible(
            flex: (viewModel.state.isEmojiSelected) ? 4 : 1,
            child: Visibility(
              visible: viewModel.state.isEmojiSelected,
              child: EmojiKeyboard(
                textEditingController: widget.textEditingController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
